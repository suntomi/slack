#!/bin/bash
TYPE="$1"
COMMAND="$2"
DATA="$3"
if [ "${COMMAND}" = "filter_event" ]; then
  if [ -z "$(echo "${DATA}" | jq -r '.slack')" ]; then
    echo ""
  else
    echo "${DATA}" | jq -r '.payload'
  fi
elif [ "${COMMAND}" = "filter_context" ]; then
  echo "match"
else
  echo ""
fi
