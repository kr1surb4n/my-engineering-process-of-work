#!/bin/bash

# This script finds all .org and .md files in the my-content/ directory,
# counts the number of lines in each file, and saves the output to
# content-path-lines.md.

OUTPUT_FILE="content-path-lines.md"
SEARCH_DIR="my-content/"

# Create or clear the output file.
> "$OUTPUT_FILE"

# Use find to locate all files ending with .org or .md in the specified
# directory and its subdirectories.
# The -print0 option is used to handle filenames with spaces or special
# characters correctly.
# The output of find is piped to a while loop that reads each filename.
find "$SEARCH_DIR" -type f \( -name "*.org" -o -name "*.md" \) -print0 | while IFS= read -r -d $'\0' file; do
  # For each file, wc -l is used to count the number of lines.
  lines=$(wc -l < "$file")
  # The filename and the line count are appended to the output file.
  echo "$file: $lines" >> "$OUTPUT_FILE"
done

echo "File list with line counts has been saved to $OUTPUT_FILE."
