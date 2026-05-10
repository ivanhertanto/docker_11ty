#!/bin/sh
set -e

# Auto cleanup broken package.json
rm -f package.json package-lock.json node_modules 2>/dev/null || true

# Default: bash interactive
if [ "$1" = "node" ] || [ "$1" = "npm" ] || [ "$1" = "npx" ]; then
  exec "$@"
elif [ $# -eq 0 ]; then
  exec bash
else
  exec "$@"
fi