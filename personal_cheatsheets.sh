#!/bin/bash

# Define the personal cheat directory
PERSONAL_CHEAT_DIR=~/.config/cheat/cheatsheets/personal

# Ensure the personal cheat directory exists
mkdir -p "$PERSONAL_CHEAT_DIR"

# Define the cheat sheets in an associative array
#just a test 2140
declare -A CHEAT_SHEETS
CHEAT_SHEETS=(
    #["copy"]="To copy use: cp"
    #["move"]="To move use: mv"
    #["remove"]="To remove use: rm"
    #["list"]="To list files use: ls"
    ["custom"]="cd & ls: cdls = cd .. && ls \n verbose copy: cpv \n count = ls * | wc -l \n suno = sudo nano , n = nano , c = clear \n find sting in files = fstr <string> \n sudo last cmd = s \n easy extract = extract <file> "
    ["md5"]="Calculate MD5 checksum of a file: md5sum file.txt \n
Verify MD5 checksums from a file: md5sum -c checksums.txt \n
\n
Calculate MD5 checksums for multiple files: md5sum file1.txt file2.txt file3.txt
\n
Calculate MD5 checksum for a binary file: md5sum -b binaryfile.bin
\n
Calculate MD5 checksum of a string (input from echo): echo -n "Hello, world!" | md5sum
\n
Calculate MD5 checksum of a string (input from a variable): my_string="This is a test string"
echo -n "$my_string" | md5sum
\n
Calculate MD5 checksum of a string (input from a file): echo -n "My secret password" > secret.txt
md5sum secret.txt
\n
Calculate MD5 checksum of a string and output in binary mode: 
echo -n "Binary data" | md5sum -b
"

)

# Loop through the cheat sheets and create each one if it doesn't exist
for cheat_name in "${!CHEAT_SHEETS[@]}"; do
    cheat_content="${CHEAT_SHEETS[$cheat_name]}"
    cheat_file="$PERSONAL_CHEAT_DIR/$cheat_name"
    
    # Check if the cheat sheet already exists
    if [ ! -f "$cheat_file" ]; then
        echo "$cheat_content" > "$cheat_file"
        echo "Cheat sheet for '$cheat_name' command has been created."
    else
        echo "Cheat sheet for '$cheat_name' command already exists."
    fi
done

echo "All cheat sheets have been processed in $PERSONAL_CHEAT_DIR"
