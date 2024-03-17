#!/bin/bash

if ! [ -x "$(command -v bun)" ]; then
  echo 'Error: bun is not installed.' >&2
  exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR/child
bun i
bun dev --port 6969 > /dev/null 2>&1 &
pid1=$!

cd $SCRIPT_DIR/parent
bun i
bun dev

cd $SCRIPT_DIR

kill $pid1
