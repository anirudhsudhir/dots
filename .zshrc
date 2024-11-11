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

[ -f "/Users/anirudh/.ghcup/env" ] && . "/Users/anirudh/.ghcup/env" # ghcup-env

# eval "$(starship init zsh)"

EDITOR=nvim
VISUAL=nvim
GIT_EDITOR=nvim

[[ $TERM == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
[[ $TERM == "xterm-kitty" ]] && alias orb="TERM=xterm-256color orb"

unsetopt BEEP

source <(fzf --zsh)

source ~/aliases.sh
set -o vi

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line


fortune

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%1${vcs_info_msg_0_} ƛ '
zstyle ':vcs_info:git*' formats " [%b]"
# zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:*' check-for-staged-changes true
# zstyle ':vcs_info:git*' formats " (%b %a%m%c) "
# zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
#
# +vi-git-untracked(){
#     if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
#         git status --porcelain | grep '??' &> /dev/null ; then
#         # This will show the marker if there are any untracked files in repo.
#         # If instead you want to show the marker only if there are untracked
#         # files in $PWD, use:
#         #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
#         hook_com[staged]+='+'
#     fi
# }
