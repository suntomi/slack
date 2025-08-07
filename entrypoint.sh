#!/bin/bash
TYPE="$1"
COMMAND="$2"
DATA="$3"
if [ "${COMMAND}" = "filter_event" ]; then
  if [ -z "$(printf '%s' "${DATA}" | jq -r '.discord // ""')" ]; then
    echo ""
  else
    printf '%s' "${DATA}" | jq -r '.payload // ""'
  fi
elif [ "${COMMAND}" = "filter_context" ]; then
  echo "match"
else
  echo ""
fi
