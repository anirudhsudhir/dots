set -gx PATH "$HOME/.rvm/bin" /opt/homebrew/bin /usr/local/opt/ruby/bin "/usr/local/lib/ruby/gems/2.6.3p62/bin" "~/go/bin" /Library/PostgreSQL/17/bin/ /usr/local/bin $PATH
set -gx NVM_DIR "$HOME/.nvm" $NVM_DIR

# set PATH $HOME/.cargo/bin $PATH
source "$HOME/.cargo/env.fish"

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx GIT_EDITOR nvim

source ~/.config/fish/fish_aliases.fish

set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_showstashstate yes
set __fish_git_prompt_showuntrackedfiles yes
set __fish_git_prompt_showupstream yes
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "!"
set -g __fish_git_prompt_char_untrackedfiles "✖"
set -g __fish_git_prompt_char_conflictedstate "⚠︎"
set -g __fish_git_prompt_char_cleanstate "✔"

starship init fish | source
eval "$(pyenv init -)"
