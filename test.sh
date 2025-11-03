#!/bin/bash
set -e

echo "1. test"
if docker images | grep -q simple-app; then
  echo "Success"
else
  echo "File Image app tidak ada"
  exit 1
fi
