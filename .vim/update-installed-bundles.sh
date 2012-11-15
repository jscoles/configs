#!/bin/bash
cd ~/.vim/bundle
ls | xargs -I {} -i zsh -c "cd {} && git pull && cd .."

