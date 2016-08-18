#!/bin/bash
ORIGIN=$(pwd)

mkdir -p $HOME/.config/fontconfig
ln -sb $HOME/dotfiles/fontconfig/fonts.conf $HOME/.config/fontconfig/fonts.conf

#DOT_FILES=( .zsh .zshrc .zshrc.alias .zshrc.linux .gitconfig .vimrc .Xresources .Xmodmap )
DOT_FILES=( zsh .zshrc .zshrc.alias .zshrc.linux .gitconfig .vimrc )

for file in ${DOT_FILES[@]}
do
    if [ -e $HOME/$file ]; then
        echo $HOME/$file exist. backup file $HOME/$file~ is created.
    fi
    ln -sb $HOME/dotfiles/$file $HOME/$file
done

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim -c "PluginInstall" -c q
