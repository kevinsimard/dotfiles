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

