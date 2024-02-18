#!/usr/bin/env bash

echo installing dot files settings...

DOT_FILES_PATH="$HOME/.dotSettings"

mkdir -p $DOT_FILES_PATH
cd $DOT_FILES_PATH

cd $DOT_FILES_PATH
echo cloning dotFiles repo...
git clone git@github.com:joas77/dotFiles.git

cd dotFiles

echo creating vim settings...
cp ./vim/vimrc ~/.vimrc
cp ./vim/gvimrc ~/.gvimrc

RCFILE="$HOME/.bash_aliases"

echo updating .bash_aliases file...
cat ./bash/bash_profile >> $RCFILE
echo "source \"${DOT_FILES_PATH}/dotFiles/bash/functions.sh\"" >> $RCFILE ;

