#!/usr/bin/bash

while read -r LINE; do 
    if [ ! -d "/home/$LINE" ]; then
        sudo useradd -c "Account for $LINE" -s /usr/bin/bash -d /home/$LINE -m $LINE
        echo "$(date): Account created for $LINE" >> 18ex11.log
        echo "Account created for $LINE."
        mkdir -p /home/$LINE/.ssh
        sudo ssh-keygen -t ed25519 -f /home/$LINE/.ssh/id_ed25519_$LINE -N ""
        echo  "$(date): SSH key created for $LINE." >> 18ex11.log
    else
       echo "Account for $LINE already exists. Skipping."
    fi
done < roster.txt

