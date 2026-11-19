#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "No arguments passed... Going directly to Chrome..."
else
  if [[ "$1" == "clean" ]]; then
    rm -rf ".devcontainer"
    exit 0
  elif [[ "$1" == "update" ]]; then
    git pull
    exit 0
  elif [[ "$1" == "--version" ]]; then
    echo "ChromeProxy v3.1, created by zyrikl."
    exit 0
  fi
fi

# if [ ! -d "./.devcontainer" ]; then
#   echo "Creating postStartCommand for convenience..."

#   mkdir ".devcontainer"
#   cd ".devcontainer"

#   touch "devcontainer.json"
#   echo "{" >> "devcontainer.json"
#   echo "  \"postStartCommand\": \"echo This is a test\"" >> "devcontainer.json"
#   echo "}" >> "devcontainer.json"
# fi

while true; do
  printf '\0'
  sleep 60
done &
LOOP_PID=$!

trap "kill $LOOP_PID 2>/dev/null" EXIT

docker run -it \
  --shm-size=1gb \
  -p 3001:3001 \
  --device /dev/dri \
  -v chrome_data:/config \
  lscr.io/linuxserver/chrome:latest bash

kill $LOOP_PID 2>/dev/null
