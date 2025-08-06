export PATH="/bin:/usr/bin:/usr/local/bin:$HOME/.rvm/bin:/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.3p62/bin:$HOME/go/bin:/Library/PostgreSQL/17/bin/:/run/current-system/sw/bin/"

. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


autoload -U compinit; compinit

EDITOR=nvim
VISUAL=nvim
GIT_EDITOR=nvim

unsetopt BEEP
setopt autocd

source ~/aliases.sh
set -o vi

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# eval "$(starship init zsh)"

# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.fzf-tab/fzf-tab.plugin.zsh
# source <(fzf --zsh)


# PROMPT='seed@pes1ug23cs917 ~ '
