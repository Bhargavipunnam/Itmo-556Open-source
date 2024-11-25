#!/usr/bin/bash

if [ -d "$HOME/Dcouments/Chapter-05-lab" ]; then
    echo "Chapter-05 lab directory exists."
else 
    echo "Chapter-05 lab directory is missing."
fi

if [-f "$HOME/Documents/Chapter-05-lab/file1.txt" ]; then 
     echo "Chapter-05 lab file1.txt exists."
else
    echo "Chapter-05 lab file1.txt is missing."
fi
