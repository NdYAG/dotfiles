#!/bin/bash
# Make soft links for configuration files

SOURCE=$(cd $(dirname "$0") && pwd)
DEST=$HOME

ls -1 | grep '^_' | while read file; do
    # replace _ with .
    link=${file:1}
    echo "$SOURCE/$file -> $DEST/.$link"
    ln -s $([ "$1" == '-f' ] && echo '-f') "$SOURCE/$file" "$DEST/.$link"
done
