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

# Make and cd to new dir
mcd() {
	mkdir -p "$1"
	cd "$1"
}

# Copy rust binaries to root
cpr() {
	cp "./target/release/$1" .
}
