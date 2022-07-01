#!/usr/bin/env bash

DEBUG_ON=1
if $DEBUG_ON; then
    set -x
fi

echo installing dot files settings...

DOT_FILES_PATH="$HOME/joasDotSettings"

mkdir -p ~/joasDotSettings
cd ~/joasDotSettings

# TODO: where should be located dotFiles repo?
cd dotFiles

cp vim/vimrc ~/.vimrc
cp vim/gvimrc ~/.gvimrc

RCFILE="$HOME/.bashrc"

TODAY=$(date -I)
BACKUP_RC="${RCFILE}_backup_${TODAY}"
echo "backing up current $RCFILE to ${BACKUP_RC} ..."

cp "$RCFILE" "$BACKUP_RC"

cat bash/bash_profile >> $RCFILE
echo "source \"${DOT_FILES_PATH}/dotFiles/bash/functions.sh\"" >> $RCFILE ;

