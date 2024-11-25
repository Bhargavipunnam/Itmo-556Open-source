#!/usr/bin/bash

ROSTERARRAY=($(cat roster.txt))
for NAME in "${ROSTERARRAY[@]}"; do 
    if [ -d "$HOME/$NAME" ]; then
       echo "Directory $HOME/$NAME already exists."
    else 
        mkdir -p "$HOME/$NAME"
        echo "Directory created for $NAME at $HOME/$NAME."
   fi
done
ls $HOME
