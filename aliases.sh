# Git aliases
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gr='git reset'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gch='git checkout'
alias gpom='git push origin main'

# ls aliases
alias la='ls -la'
alias lh='ls -lah'

alias v='nvim'
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

alias please_brother=fuck

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

# Usage: rgfzf [<rg SYNOPSIS>]
function rgfzf {
  command rg --color=always --line-number --no-heading --smart-case "${*:-}" |
    command fzf -d':' --ansi \
      --preview "command bat -p --color=always {1} --highlight-line {2}" \
      --preview-window ~8,+{2}-5 |
    awk -F':' '{print $1}'
}
