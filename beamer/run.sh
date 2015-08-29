#!/bin/bash

#
# Marcio Ribeiro <binary@b1n.org>
#

f="$1"
if [ -z "$f" ]; then
  echo "Usage: $0 target"
  exit 1
fi

if ! [ -f "$f" ]; then
  echo "file '$f' could not be found"
  exit 2
fi

# Remove .tex extension
target="${x%%.tex}"

# Run make
MAKE="make -f /usr/bin/Makefile"
FILE="$target" $MAKE && $MAKE clean
