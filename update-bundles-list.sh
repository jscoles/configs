#!/bin/bash
cd ~/.vim/bundle
ls -lrt -d -1 $PWD/* | awk '{print $9}' | xargs -I {} -i zsh -c "cd {} && git remote -v | grep '(push)' | grep 'git://' | awk '{print \$2}'" | tee ~/mystuff/configs/vim-bundles.txt

