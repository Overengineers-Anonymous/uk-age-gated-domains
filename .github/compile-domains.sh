#!/bin/bash

# Script to compile all per-domain lists from into domains.txt

set -e

OUTPUT_FILE="domains.txt"
LISTS_DIR="per_domain_lists"

rm -f "$OUTPUT_FILE"

echo "Compiling domain lists into $OUTPUT_FILE..."

first_file=true

# Process all .txt files in alphabetical order
for file in $(find "$LISTS_DIR" -name "*.txt" | sort); do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        echo "Processing $filename..."

        # Add blank line before header (except for first file)
        if [[ "$first_file" = false ]]; then
            echo "" >> "$OUTPUT_FILE"
        fi

        # Add header comment
        echo "# $filename" >> "$OUTPUT_FILE"

        # Add the file contents
        cat "$file" >> "$OUTPUT_FILE"

        first_file=false
    fi
done

echo "Compilation complete! Output written to $OUTPUT_FILE"
echo "Total lines: $(wc -l < "$OUTPUT_FILE")"
