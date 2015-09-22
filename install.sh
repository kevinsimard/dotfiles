#!/usr/bin/env bash

PWD=$(pwd)

# vim directories
mkdir -p ~/.vim/
mkdir -p ~/.vim/colors/

# vimrc files
ln -sf $PWD/vim/.vimrc ~/.vimrc
ln -sf $PWD/vim/.vimrc.before ~/.vimrc.before
ln -sf $PWD/vim/.vimrc.after ~/.vimrc.after

# vim pluggins
ln -s $PWD/vim/plugged ~/.vim/plugged

# vim schemes
ln -sf $PWD/vim/themes/predawn/colors/predawn.vim ~/.vim/colors/predawn.vim

# install 'junegunn/vim-plug' plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# compile 'vimproc' native extension
cd $PWD/vim/plugged/vimproc.vim/ && make ARCHS='i386 x86_64'

# required for 'YouCompleteMe'
brew install cmake

# compile 'YouCompleteMe' binary
cd $PWD/vim/plugged/YouCompleteMe/ && \
    git submodule update --init --recursive && \
    ./install.py
