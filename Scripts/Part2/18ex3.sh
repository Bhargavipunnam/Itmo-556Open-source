#!/usr/bin/bash

ROSTERARRAY=($(cat roster.txt))
for NAME in "${ROSTERARRAY[@]}"; do
    mkdir -p "$HOME/$NAME"
    echo "Directory created for $NAME at $HOME/$NAME"
done
ls $HOME
