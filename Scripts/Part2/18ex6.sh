#!/usr/bin/bash

if [-x "$1" ]; then
    echo "File $1 is executable."
else
   echo "File $1 is not executable."
fi
