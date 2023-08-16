#!/bin/bash

# Set the colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if the user provided a search term as input
if [ -z "$1" ]; then
    echo -e "${RED}Error:${NC} Please provide a search term."
    exit 1
fi

search_term="$1"

# Print the introduction with animation
echo -e "${GREEN}"
cat << "EOF"
__     _______ ____  _____  __
\ \   / / ____|  _ \|  __ \/  |                                    \ \_/ / (___ | |_) | |__) | |
  \   / \___ \|  _ <|  _  /| |
   | |  ____) | |_) | | \ \| |
   |_| |_____/|____/|_|  \_\/

 github: AliBenhenia
  / \
 / _ \
/ ___ \
\/   \/

EOF
echo -e "${NC}"
sleep 1

# Print the animated search term
echo -e "${YELLOW}"
for (( i=0; i<${#search_term}+4; i++ )); do
    echo -ne "\r   "
    for (( j=0; j<=$i; j++ )); do
        echo -n "#"
    done
    printf " ${search_term:0:$i}"
    sleep 0.1
done
echo -e "${NC}"
sleep 1

# Find all .c files in the current directory
c_files=$(find . -type f -name "*.cpp")

# Flag to track if the word is found in any file
word_found=false

# Loop through each .c file
for file in $c_files; do
    # Check if the file contains the exact search term
    if grep -q -w "$search_term" "$file"; then
        echo -e "${GREEN}OK:${NC} $file"
        word_found=true
    else
        echo -e "${RED}NO:${NC} $file"
        word_found=true
    fi
done

# Print an error message if the word is not found in any .c file
if [ "$word_found" = false ]; then
    echo -e "${RED}NO:${NC} The word '$search_term' is not found in any .c file"
fi
