#!/bin/bash

mkdir ~/.vim/bundle
cd ~/.vim/bundle
pwd
cat ~/mystuff/configs/.vim/bundles.txt | xargs -I {} -i zsh -c "git clone {}"

