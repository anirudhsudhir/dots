#!/bin/bash

# Init Script (WIP)

# Linux
# install i3 polybar brightnessctl nmtui(networkmanager) feh
# alsamixer - "m" to unmute

# Mac
Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/opt/homebrew/bin/brew update
/opt/homebrew/bin/brew upgrade

# Clone and symlink dotfiles
git clone https://github.com/anirudhsudhir/dots.git
brew install stow
cd ~/dots && /opt/homebrew/bin/stow -v .

# Use fish shell
/opt/homebrew/bin/brew install fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

exec fish

cd ~ && brew bundle install

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# IMPORTANT: SETUP SSH KEYS
