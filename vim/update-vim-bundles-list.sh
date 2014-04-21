#!/bin/bash
CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUNDLE_DIR="$HOME/.vim/bundle"
ls -lrt -d -1 $BUNDLE_DIR/* | awk '{print $9}' | xargs -I {} -i zsh -c "cd {} && git remote -v | grep '(push)' | grep 'git://' | awk '{print \$2}'" | tee "$CONFIG_DIR/vim-bundles.txt"

