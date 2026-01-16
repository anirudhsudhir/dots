alias g='git'

# ls aliases
alias ls='ls --color'
alias la='ls -la'
alias lh='ls -lah'

alias v='nvim'
alias ssh_env='TERM=xterm-256color ssh'
alias orb_env='TERM=xterm-256color orb'

bind \ce edit_command_buffer

function f
  find * -type f | fzf | tr -d '\n' | pbcopy
end

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

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

