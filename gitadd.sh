#!/bin/bash -e

for folderName in $(ls -F)
do
    if [[ "$folderName" == *"/"* ]]; then
        git add "$folderName"docker-compose.yml
    fi
    
done

sudo git add README.md
sudo git add gitadd.sh
