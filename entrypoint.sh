#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi
COMMAND="$1"
DATA="$2"
if [ "${COMMAND}" = "match" ]; then
  if [ -z "$(echo "${DATA}" | jq -r '.slack')" ]; then
    echo ""
  else
    echo "${DATA}" | jq -r '.payload'
  fi
else 
  echo ""
fi
