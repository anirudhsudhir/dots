alias v='nvim'
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gr='git reset'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gch='git checkout'
alias gpom='git push origin main'

alias la='ls -la'
alias lh='ls -lah'

mcd() {
  mkdir -p "$1"
  cd "$1"
}
