#!/bin/bash
# docker-run.sh - One-liner Node.js dev environment

docker run --rm -it \
  --name nodejs-dev-ivan \
  -v $(pwd):/app \
  -v /app/node_modules \
  -p 3000:3000 \
  -w /app \
  -u "$(id -u):$(id -g)" \
  --entrypoint /bin/sh \
  your-image-name:latest