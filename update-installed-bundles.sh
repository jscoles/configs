#!/bin/bash
cd ~/.vim/bundle
ls | xargs -I {} -i zsh -c "cd {} && git pull && cd .."

pip install --user git+git://github.com/Lokaltog/powerline
