#!/bin/bash

echo "you must install nvim manually before this will do much good!"

CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
echo "config dir is '$CONFIG_DIR'"
cd
ln -fs $CONFIG_DIR/dotfiles/init.vim .nvimrc

NVIM_CONFIG_DIR=".config/nvim"
mkdir -p $NVIM_CONFIG_DIR
cd $NVIM_CONFIG_DIR
ln -fs $CONFIG_DIR/dotfiles/init.vim init.vim

NVIM_SHARE_DIR=".local/share/nvim"
cd
mkdir -p "$NVIM_SHARE_DIR/site/autoload"
cd "$NVIM_SHARE_DIR/site/autoload"
ln -fs $CONFIG_DIR/nvim/plug.vim plug.vim

