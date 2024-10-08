# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sammy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf-tab
    )

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.3p62/bin:$PATH"
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

# bun completions
[ -s "/Users/anirudh/.bun/_bun" ] && source "/Users/anirudh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# eval "$(starship init zsh)"

source <(fzf --zsh)

source ~/aliases.sh
set -o vi

EDITOR=nvim
VISUAL=nvim
GIT_EDITOR=nvim

[[ $TERM == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
[[ $TERM == "xterm-kitty" ]] && alias limactl="TERM=xterm-256color limactl"

fortune
