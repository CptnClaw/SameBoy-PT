#!/bin/bash

POKERED="../pokered"

if [ "$1" ]; then
ATTR_TO_TRANSLATE="$(echo $1 | cut -d' ' -f1)"::
FILE_TO_TRANSLATE=$(grep -Rn "$POKERED" -e "$ATTR_TO_TRANSLATE")
FILE_TO_TRANSLATE=$(echo "$FILE_TO_TRANSLATE" | cut -d':' -f1,2)
code -g $FILE_TO_TRANSLATE
fi
