#!/bin/bash

read -p "Enter the foldernames (separated by spaces): " -a foldernames

dir=$(pwd)

for foldername in "${foldernames[@]}"; do
  folderpath="$dir/$foldername"
  mkdir "$folderpath"
  
  if [ -f "$folderpath" ]; then
    echo "🔴 Failed to create the folder: $folderpath"
  else
    echo "✅ Folder created successfully: $folderpath"
  fi
done