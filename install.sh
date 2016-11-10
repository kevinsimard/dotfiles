#!/usr/bin/env bash

# vim directories
mkdir -p ~/.vim/
mkdir -p ~/.vim/colors/

# vimrc files
ln -sf $(pwd)/vim/.vimrc ~/.vimrc
ln -sf $(pwd)/vim/.vimrc.before ~/.vimrc.before
ln -sf $(pwd)/vim/.vimrc.after ~/.vimrc.after

# vim pluggins
ln -s $(pwd)/vim/plugged ~/.vim/plugged

# vim schemes
ln -sf $(pwd)/vim/themes/predawn/colors/predawn.vim ~/.vim/colors/predawn.vim

# install "junegunn/vim-plug" plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# compile "vimproc" native extension
cd ~/.vim/plugged/vimproc.vim/ && make ARCHS="i386 x86_64"

# compile "YouCompleteMe" binary
cd ~/.vim/plugged/YouCompleteMe/ && \
    git submodule update --init --recursive && ./install.py
