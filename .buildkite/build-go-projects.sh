#!/bin/bash

echo "Finding and building Go projects..."

find . -type f -name 'go.mod' -exec dirname {} \; | sort -u | while read -r dir; do
  echo "Attempting to build in directory: $dir"
  cd "$dir" && make 
done
