#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "No arguments passed... Going directly to Chrome..."
else
  if [[ "$1" == "update" ]]; then
    git pull
    exit 0
  fi
fi

#if [ -d "./.devcontainer" ]; then
#  mkdir ".devcontainer"

while true; do
  echo "\0"
  sleep 60
done &
LOOP_PID=$!

trap "kill $LOOP_PID" EXIT

docker run -it \
  --shm-size=1gb \
  -p 3001:3001 \
  --device /dev/dri \
  -v chrome_data:/config \
  lscr.io/linuxserver/chrome:latest bash
