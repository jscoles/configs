#!/bin/bash

mkdir ~/.vim/bundle
cd ~/.vim/bundle
cat ~/mystuff/configs/vim-bundles.txt | xargs -I {} sh -c "git clone {}"

pip install --user git+git://github.com/Lokaltog/powerline
