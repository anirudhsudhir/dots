#!/bin/bash

# Init Script (WIP)

echo "185.199.108.133 raw.githubusercontent.com" >>/etc/hosts

# Linux
# install i3 polybar brightnessctl nmtui(networkmanager) feh
# alsamixer - "m" to unmute

# Mac
# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade

# clone and symlink dotfiles
brew install stow
git clone https://github.com/anirudhsudhir/dots ~/dots
cd ~/dots && stow -v .

# zsh plugins
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc

brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

git clone https://github.com/Aloxaf/fzf-tab ~/.fzf-tab
echo "source ~/.fzf-tab/fzf-tab.plugin.zsh" >>~/.zshrc

zsh

# tmux plugin manager
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install --cask nikitabobko/tap/aerospace
brew install --cask alacritty
brew install --cask hammerspoon
