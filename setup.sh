#!/bin/bash
# Make links for configuration files

SOURCE=$(cd $(dirname "$0") && pwd)
DEST=$HOME

# find $SOURCE -maxdepth 1 -type f | while read file; do
ls -1 | grep '^_' | while read file; do
    # replace _ with .
    link=$(expr substr $file 2 $(expr length $file))
    echo "$SOURCE/$file -> $DEST/.$link"
    ln -s "$SOURCE/$file" "$DEST/.$link"
done


