fish_add_path $HOME/.rvm/bin  /usr/local/bin /usr/local/opt/ruby/bin /usr/local/lib/ruby/gems/2.6.3p62/bin $HOME/go/bin /Library/PostgreSQL/17/bin/ /run/current-system/sw/bin/

source "$HOME/.cargo/env.fish"

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx GIT_EDITOR nvim

set fish_greeting
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

set -gx FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

starship init fish | source
zoxide init fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniforge/base/bin" $PATH
    end
end
# <<< conda initialize <<<

mise activate fish | source
