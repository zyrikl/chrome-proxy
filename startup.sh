#!/usr/bin/env bash

docker run --rm -it \
  --shm-size=1gb \
  -p 3001:3001 \
  --device /dev/dri \
  lscr.io/linuxserver/chrome:latest bash
