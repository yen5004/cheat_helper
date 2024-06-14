#!/bin/bash

# Define the personal cheat directory
PERSONAL_CHEAT_DIR=~/.config/cheat/cheatsheets/personal

# Ensure the personal cheat directory exists
mkdir -p "$PERSONAL_CHEAT_DIR"

# Define the content of the cheat sheet
CHEAT_CONTENT="To copy use: cp"

# Write the cheat sheet to the personal directory
echo "$CHEAT_CONTENT" > "$PERSONAL_CHEAT_DIR/copy"

# Inform the user
echo "Cheat sheet for 'cp' command has been created in $PERSONAL_CHEAT_DIR"
