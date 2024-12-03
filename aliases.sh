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
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

alias cv='NVIM_APPNAME="custom-nvim" nvim'

# Build and copy rust debug builds to root
cbd() {
  cargo build
  cp "./target/debug/$1" .
}

# Build and copy rust release builds to root
cbr() {
  cargo build --release
  cp "./target/release/$1" .
}

mkcd() {
  mkdir -p "$1"
  cd "$1" || return
}

# Usage: rgfzf [<rg SYNOPSIS>]
function rgfzf {
  command rg --color=always --line-number --no-heading --smart-case "${*:-}" |
    command fzf -d':' --ansi \
      --preview "command bat -p --color=always {1} --highlight-line {2}" \
      --preview-window ~8,+{2}-5 |
    awk -F':' '{print $1}'
}
