#!/bin/bash

# Simple File Helper Script

echo "Choose an option:"
echo "1) List all files"
echo "2) Count lines in a file"
echo "3) Show file sizes"
echo "4) Search for a word in a file"
echo "5) Exit"

read choice

case $choice in
    1)
        echo "Listing all files:"
        ls -lh      # list with human-readable file sizes
        ;;
    2)
        echo "Enter filename:"
        read fname
        wc -l "$fname"   # wc -l = word count, lines
        ;;
    3)
        echo "Showing file sizes:"
        du -sh *         # disk usage, summary, human readable
        ;;
    4)
        echo "Enter filename:"
        read fname
        echo "Enter word to search:"
        read word
        grep "$word" "$fname"   # search for word in file
        ;;
    5)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
