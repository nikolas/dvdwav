#!/usr/bin/env bash

# First argument should be the dvd's VIDEO_TS directory.
VIDEO_TS=$1

FILES="$VIDEO_TS/*.VOB"
for f in $FILES
do
    echo "Processing $f file..."
    BASENAME=`basename $f`
    OUTPUT_FILE="$BASENAME.wav"
    ffmpeg -i "$f" -vn -acodec copy $OUTPUT_FILE
done
