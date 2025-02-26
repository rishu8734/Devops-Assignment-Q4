#!/bin/bash

target_dir="/mnt/d"

if [ ! -d "$target_dir" ]; then
    echo "Error: Directory '$target_dir' not found."
    exit 1
fi

echo -e "Name\\t\\tType\\t\\tSize (KB)"

find "$target_dir" -mindepth 1 -maxdepth 1 | while read -r item; do
    name=$(basename "$item")
    if [ -d "$item" ]; then
        type="Directory"
        size=$(du -sk "$item" | cut -f1)
    elif [ -f "$item" ]; then
        type="File"
        size=$(du -k "$item" | cut -f1)
    else
        type="Other"
        size=0
    fi

    echo -e "$name\\t\\t$type\\t\\t$size"
done
# change1
#change2
# change3
# change4
# change5

# change6
# change7
# change8
# change9
# change10
