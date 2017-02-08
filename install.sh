#!/usr/bin/env bash

# directories
mkdir -p ~/.vim/autoload/
mkdir -p ~/.vim/colors/

# vimrc files
ln -sf $(pwd)/vim/.vimrc ~/.vimrc
ln -sf $(pwd)/vim/.vimrc.before ~/.vimrc.before
ln -sf $(pwd)/vim/.vimrc.after ~/.vimrc.after
ln -sf $(pwd)/vim/.vimrc ~/.ideavimrc

# vim schemes
ln -sf $(pwd)/vim/themes/predawn/colors/predawn.vim ~/.vim/colors/predawn.vim

# vim plugins
ln -sf $(pwd)/vim/plug.vim ~/.vim/autoload/plug.vim
ln -sf $(pwd)/vim/plugged/ ~/.vim/plugged/
