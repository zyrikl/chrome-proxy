#!/usr/bin/env bash

docker run -d -it \
  --shm-size=1gb \
  -p 3001:3001 \
  --device /dev/dri \
  -v chrome_data:/config \
  lscr.io/linuxserver/chrome:latest bash

while true; do
    printf "\0"
    sleep 60
done