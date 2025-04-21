#!/bin/bash

read -p "Enter the path to the input file: " input_file
output_file="param.txt"

echo "Extracting parameterized URLs..."

grep -Eo 'https?://[^ ]+\?[^ ]*' "$input_file" | grep '=' | sort -u > "$output_file"

echo "Extraction complete. Results saved to $output_file"

