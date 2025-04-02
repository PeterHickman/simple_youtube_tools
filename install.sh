#!/bin/sh

TARGET="/usr/local/bin/"

for FILE in yt*
do
  echo "Installing $FILE to $TARGET"
  cp $FILE $TARGET
done
