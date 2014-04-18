#!/bin/bash
HOME_DIR=`readlink -f ~`
CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
echo "config dir is '$CONFIG_DIR'"
cd
ln -fs $CONFIG_DIR/dotfiles/.vimrc .vimrc
cp -r $CONFIG_DIR/dotfiles/.vim .

BUNDLE_DIR="$HOME_DIR/.vim/bundle"
mkdir -p $BUNDLE_DIR

#clear old packages
rm -rf "$BUNDLE_DIR/command-t"
rm -rf "$BUNDLE_DIR/ctrlp.vim"
rm -rf "$BUNDLE_DIR/scss-syntax.vim"
rm -rf "$BUNDLE_DIR/mru.vim"

while read reponame; do
  FILE="${reponame##*/}"; PACKAGE_NAME="${FILE%%.*}"; PACKAGE_DIR="$BUNDLE_DIR/$PACKAGE_NAME"
  echo -n "$PACKAGE_NAME... "
  if [ ! -d "$PACKAGE_DIR" ]; then
    mkdir -p $PACKAGE_DIR && git clone $reponame $PACKAGE_DIR
  else
    cd $PACKAGE_DIR && git pull
  fi
done < $CONFIG_DIR/vim/vim-bundles.txt

