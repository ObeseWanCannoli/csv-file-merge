#!/bin/bash

# Prompt the user for the folder path containing CSV files
read -p "Enter the folder path containing CSV files: " folder_path

# Check if the folder path exists
if [ ! -d "$folder_path" ]; then
  echo "Invalid folder path. Please provide a valid path."
  exit 1
fi

# Check if there are at least two CSV files in the folder
csv_files=$(find "$folder_path" -maxdepth 1 -type f -name "*.csv" | wc -l)
if [ "$csv_files" -lt 2 ]; then
  echo "At least two CSV files are required for merging."
  exit 1
fi

# Merge the CSV files
first_file=$(find "$folder_path" -maxdepth 1 -type f -name "*.csv" | head -n 1)
output_file="$folder_path/merged.csv"

# Remove the output file if it already exists
if [ -f "$output_file" ]; then
  echo "Removing existing merged file: $output_file"
  rm "$output_file"
fi

# Extract the header from the first CSV file
header=$(head -n 1 "$first_file")

# Create the output file with the header
echo "$header" > "$output_file"

# Concatenate the data from each CSV file (excluding headers) to the output file
find "$folder_path" -maxdepth 1 -type f -name "*.csv" | tail -n +2 | while IFS= read -r file; do
  tail -q -n +2 "$file" >> "$output_file"
done

echo "Merging completed. The merged file '$output_file' has been created."
