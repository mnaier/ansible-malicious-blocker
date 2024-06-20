#!/bin/bash

# Input file
input_file="addresses.txt"
# Temporary file to store cleaned data
temp_file="temp.txt"
# Output files
ip_addressfile="ip_address.txt"
domain_file="domain_names.txt"

# Step 1: Remove brackets from IP addresses and remove / characters, save to a temporary file
sed 's/\[\.\]/./g; s/\///g' "$input_file" > "$temp_file"

# Step 2: Extract IP addresses from the cleaned text to ips.txt
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$temp_file" > "$ip_addressfile"

# Step 3: Extract text (excluding lines with IP addresses) to text.txt
grep -Ev '([0-9]{1,3}\.){3}[0-9]{1,3}' "$temp_file" > "$domain_file"

# Optionally, remove the temporary file if no longer needed
rm "$temp_file"

# End of script
