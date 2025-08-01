#!/bin/bash
TYPE="$1"
COMMAND="$2"
DATA="$3"
if [ "${COMMAND}" = "match" ]; then
  if [ -z "$(echo "${DATA}" | jq -r '.slack')" ]; then
    echo ""
  else
    echo "${DATA}" | jq -r '.payload'
  fi
else 
  echo ""
fi
