#!/usr/bin/bash

while read -r LINE; do 
   if [ -d "/tmp/$LINE" ]; then 
        echo "$LINE" >> /tmp/duplicates.txt
   else
       mkdir -p "/tmp/$LINE"
       echo "Directory /tmp/$LINE created."
   fi
done < names.txt

