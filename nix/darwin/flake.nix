{
  description = "hobbes: nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    # home-manager.url = "github:nix-community/home-manager";
    # home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew}:
  let
    configuration = { pkgs, config, ... }: {

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";

      nixpkgs.config.allowUnfree = true;
      system.primaryUser = "anirudh";
      programs.fish.enable = true;
      users.users.anirudh = {
        home = "/Users/anirudh";
        shell = pkgs.fish;
      };

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = with pkgs; [
        aerospace
        appcleaner
        bat
        cmake
        fd
        fish
        fzf
        gh
        glow
        golangci-lint
        google-chrome
        karabiner-elements
        keycastr
        kitty
        kotlin
        mkalias
        mongodb-ce
        mongodb-compass
        neovim
        numi
        openjdk24
        pika
        pyenv
        redis
        shottr
        spotify
        starship
        stow
        spoofdpi
        tmux
        tree
        uv
        vesktop
        vim
        vscode
        wireshark
        zed-editor
        zoxide
      ];

      homebrew = {
          enable = true;

          taps = [
            "anna-ssg/anna"
          ];

          brews = [
            # {
            #   name = "batt";
            #   start_service = true;
            #   restart_service = "changed";
            # }
            "abseil"
            "anna"
            "boost"
            "bore-cli"
            "cpr"
            "drogon"
            "go"
            "jsoncpp"
            "llvm"
            {
              name = "mysql";
              start_service = false;
              # restart_service = "changed";
            }
            "mas"
            "protobuf"
            "python-tk"
          ];

          casks = [
            "mysqlworkbench"
            "obs"
            "obsidian"
            "orbstack"
            "ghostty"
          ];

          masApps = {
            "Bitwarden" = 1352778147;
            "Flow Pomodoro" = 1423210932;
            "Telegram" = 946399090;
            "Time out" = 402592703;
            "uBlock Origin Lite" = 6745342698;
          };

          onActivation.cleanup = "zap";
          onActivation.autoUpdate = true;
          onActivation.upgrade = true;
      };

      environment.variables = {
       JAVA_HOME = "${pkgs.openjdk24}";
      };

      fonts.packages = with pkgs; [
        nerd-fonts.blex-mono
        nerd-fonts.jetbrains-mono
        nerd-fonts.victor-mono
        julia-mono
      ];

      system.defaults = {
        dock.autohide = true;
      };

      security.pam.services.sudo_local.touchIdAuth = true;

      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read -r src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
      '';

    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#hobbes
    darwinConfigurations."hobbes" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            # Install Homebrew under the default prefix
            enable = true;

            # Apple Silicon Only: Also install Homebrew under the default Intel prefix for Rosetta 2
            enableRosetta = true;

            # User owning the Homebrew prefix
            user = "anirudh";
          };
        }
      ];
    };
  };
}
