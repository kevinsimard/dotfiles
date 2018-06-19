#!/bin/bash

# directories
mkdir -p ~/.vim/colors/
mkdir -p ~/.vim/autoload/

# vimrc files
ln -sf $(pwd)/vim/.vimrc ~/.vimrc
ln -sf $(pwd)/vim/.vimrc.before ~/.vimrc.before
ln -sf $(pwd)/vim/.vimrc.after ~/.vimrc.after

# vim plugins
ln -sf $(pwd)/vim/plug.vim ~/.vim/autoload/plug.vim
ln -sf $(pwd)/vim/plugged/ ~/.vim/plugged
