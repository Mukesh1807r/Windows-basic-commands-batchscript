#!/bin/bash

while true
do
    read -p "Enter a number: " num

    # Check if input is a valid number
    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo "Invalid number! Please enter a valid integer."
        continue
    fi

    # Calculate remainder
    rem=$(( num % 2 ))

    if [ $rem -eq 0 ]; then
        echo "$num is EVEN."
    else
        echo "$num is ODD."
    fi

    # Ask user to continue
    while true
    do
        read -p "Do you want to check another number (Y/N)? " choice

        case "$choice" in
            [Yy] ) break ;;          # repeat outer loop
            [Nn] ) echo "Thank you for using the program!"; exit ;;
            * ) echo "Invalid input! Please enter Y or N." ;;
        esac
    done

done
