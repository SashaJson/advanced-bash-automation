#!/bin/bash

cleanup() {
  kill $(jobs -p)
}

trap cleanup EXIT

push_to_log() {
  local level="error"
  while true; do
    sleep 1
    echo "{\"level\":\"$level\", \"message\":\"$(date)\"}" >> log
    if [[ $level == "error" ]]; then 
      level="log"
    else 
      level="error"
    fi
  done
}

push_to_log &

tail -f log | ./filter-idjson.js

