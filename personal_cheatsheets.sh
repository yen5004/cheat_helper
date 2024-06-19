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

    	["custom"]="
	# cdls = cd .. && ls

	# cpv = verbose copy

	# count: ls * | wc -l

	# suno: sudo nano

	# more custom: cheat custom2
"



	["custom2"]="
	# n = nano

	# c = clear

	# s = sudo last cmd

	# find sting in files: fstr <string>

	# easy extract: extract <file>
"


	["md5"]="
	# Calculate MD5 checksum of a file: md5sum file.txt

	# Verify MD5 checksums from a file: md5sum -c checksums.txt

	# Calculate MD5 checksums for multiple files:  md5sum file1.txt file2.txt file3.txt

	# Calculate MD5 checksum for a binary file:  md5sum -b binaryfile.bin

	# More md5sum cmds: md5more
"

	["md5more"]="
	# Calculate MD5 checksum of a string (input from echo): echo -n \"Hello, world!\" | md5sum

	# Calculate MD5 checksum of a string (input from a variable): my_string=\"This is a test string\"
	#\"echo -n \"$my_string\" | md5sum\"

	# Calculate MD5 checksum of a string (input from a file): echo -n \"My secret password\" > secret.txt
	#\"md5sum secret.txt\"

	# Calculate MD5 checksum of a string and output in binary mode:  echo -n \"Binary data\" | md5sum -b
"
	["example"]="# This is my example: print out an example"
	["cheats"]="# For personal cheat directory: ~/.config/cheat/cheatsheets/personal"
	["cat"]="# cat with number lines: cat -n test.txt"
	["notify"]="# See: cheat ntfy"
	["ntfy"]="
	# Used with ntfy server, to use: ntfy -d \"text here\" 192.168.1.1/room_number
	# ntfy mytestfile
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
