#!/usr/bin/env bash

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
