#!/bin/sh

if ! [ "$(id -u)" = 0 ]; then
  echo 'You must be root to do this.' 1>&2
  exit 1
fi

##
# When installing we would install as root, however on
# BSD based systems (such as OSX) this is not a valid
# group / user for install so we use the numeric value
##
ROOT="0"

TARGET="/usr/local/bin/"

for FILE in yt*
do
  echo "Installing $FILE to $TARGET"
  install -g $ROOT -o $ROOT -m 0755 $FILE $TARGET
done
