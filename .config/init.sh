# A WIP init script to setup my mac, with Homebrew as the package manager

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install/ upgrade git?

#cloning my .config/ dir
git clone

# adding symbolic links to config files
cd
ln -s .config/.vimrc .
ln -s .config/zsh/.zshenv .
ln -s .config/zsh/.zshrc .
