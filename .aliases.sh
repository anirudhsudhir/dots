# Git aliases
alias g='git'

# ls aliases
alias ls='ls --color'
alias la='ls -la'
alias lh='ls -lah'

alias v='nvim'
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias ssh_env='TERM=xterm-256color ssh'
alias orb_env='TERM=xterm-256color orb'

alias f='find * -type f | fzf | pbcopy'

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

