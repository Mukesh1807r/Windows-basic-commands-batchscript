#!/bin/bash

while true
do
    clear
    echo "-------- MENU --------"
    echo "1. Say Hello"
    echo "2. Create a File"
    echo "3. Exit"
    echo "-----------------------"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Hello, World!"
            read -p "Press Enter to continue..."
            ;;
        2)
            echo "This is a new file" > newfile.txt
            echo "newfile.txt created!"
            read -p "Press Enter to continue..."
            ;;
        3)
            echo "Goodbye!"
            exit
            ;;
        *)
            echo "Invalid choice! Please try again."
            read -p "Press Enter to continue..."
            ;;
    esac
done
