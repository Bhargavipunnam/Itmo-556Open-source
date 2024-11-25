#!/usr/bin/bash

if [ -d "$HOME/Documents/Chapter-05-lab" ]; then
      rm -rf "$HOME/Documents/Chapter-05-lab"
      echo "Chapter 05 lab content deleted."
else
    echo "chapter 05 lab content is not present."
fi
