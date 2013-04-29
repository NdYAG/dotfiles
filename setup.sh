#!/bin/bash
# Make soft links for configuration files

SOURCE=$(cd $(dirname "$0") && pwd)
DEST=$HOME

ls -1 | grep '^_' | while read file; do
    # replace _ with .
    link=$(expr substr $file 2 $(expr length $file))
    echo "$SOURCE/$file -> $DEST/.$link"
    ln -s "$SOURCE/$file" "$DEST/.$link"
done


