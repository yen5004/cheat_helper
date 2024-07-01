#!/bin/bash
# Use this script to get personal cheat files into the personal cheat folder
# personal cheat files can come from the repo

######___This is under construction, not ready to be be used___######

# Define variables
#CHEAT_REPO_DIR=~/cheat_helper/cheatsheets/personal
CHEAT_REPO_DIR=~/cheat_helper/personal_cheatsheets
PERSONAL_CHEAT_DIR=~/.config/cheat/cheatsheets/personal

# Ensure the personal cheat directory exists
mkdir -p "$PERSONAL_CHEAT_DIR"

# Copy custom cheat files to the personal directory
cp "$CHEAT_REPO_DIR"/* "$PERSONAL_CHEAT_DIR"

# Inform the user
echo "Custom cheat files have been copied to $PERSONAL_CHEAT_DIR"
