#!/bin/bash
ORIGIN=$(pwd)

DOT_FILES=( zsh .zshrc .gitconfig .vimrc )

for file in ${DOT_FILES[@]}
do
    if [ -e $HOME/$file ]; then
        echo $HOME/$file exist. backup file $HOME/$file~ is created.
    fi
    ln -sb $HOME/dotfiles/$file $HOME/$file
done

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim -c "PluginInstall" -c q
