#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo -e "\n✨ Usage: $0 <host> <destination_dir>\n"
  exit 1
fi

HOST="$1"
DEST="$2"

echo -e "\n🚀 Copying files to \033[1m$HOST:$DEST\033[0m...\n"

scp src/* "$HOST":"$DEST"

if [ $? -eq 0 ]; then
  echo -e "\n✅ \033[1mTransfer complete!\033[0m\n"
else
  echo -e "\n❌ \033[1mTransfer failed.\033[0m\n"
fi
