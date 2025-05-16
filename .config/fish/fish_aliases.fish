# Git aliases
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gch='git checkout'
alias gpo='git push origin'
alias gpom='git push origin main'

# ls aliases
alias ls='ls --color'
alias la='ls -la'
alias lh='ls -lah'

alias v='nvim'
alias ssh_env='TERM=xterm-256color ssh'
alias orb_env='TERM=xterm-256color orb'

alias lv='NVIM_APPNAME=lazyvim nvim'

# Build and copy rust debug builds to root
function cbd
    cargo build
    cp "./target/debug/$argv[1]" .
end

# Build and copy rust release builds to root
function cbr
    cargo build --release
    cp "./target/release/$argv[1]" .
end

function mkcd
    mkdir -p "$argv[1]"
    cd "$argv[1]" || return
end

function rgfzf
    set -x RG_PREFIX rga --files-with-matches
    set -l file
    set file (
        FZF_DEFAULT_COMMAND="$RG_PREFIX '$argv'" \
            fzf --sort --preview="[ ! -z {} ] && rga --pretty --context 5 {q} {}" \
                --phony -q "$argv" \
                --bind "change:reload:$RG_PREFIX {q}" \
                --preview-window="70%:wrap"
    ) &&
        open "$file"
end
