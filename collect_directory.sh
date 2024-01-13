#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <parent_directory>"
    exit 1
fi

parent_directory=$1

# Check if the parent directory exists
if [ ! -d "$parent_directory" ]; then
    echo "Parent directory does not exist: $parent_directory"
    exit 1
fi

# Move files from subdirectories to parent with subdirectory path prefix
find "$parent_directory" -mindepth 2 -type f -exec sh -c '
    file="$1"
    dir=$(echo "$file" | tr '/' '_' | sed 's!\_!\/!')
    mv "$file" "$dir"
' sh {} "$parent_directory" \;

# Remove all empty subdirectories
find "$parent_directory" -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} \;
