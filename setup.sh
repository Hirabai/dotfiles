#!/bin/bash
set -e

echo "Giving reassurance that this is actually working :)"

git config --global include.path ~/dotfiles/git/gitconfig

mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
[ -d ~/.dotfiles/nvim/lua ] && ln ln -sf ~/.dotfiles/nvim/lua ~/.config/nvim/lua

mkdir -p ~/.local/bin
cp -r ~/.dotfiles/bin/* ~/.local/bin
chmod +x ~/.local/bin/*

echo "Setup is officially DONE!"
