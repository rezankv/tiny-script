#!/bin/bash

read -p "Enter the filenames (separated by spaces): " -a filenames
read -p "Enter the file extension (without dot): " extension

dir=$(pwd)

for filename in "${filenames[@]}"; do
  filepath="$dir/$filename.$extension"
  touch "$filepath"
  
  if [ -f "$filepath" ]; then
    echo "✅ File created successfully: $filepath"
  else
    echo "🔴 Failed to create the file: $filepath"
  fi
done