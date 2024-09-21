#!/bin/bash

function print_version_and_exit()
{
    echo "You selected:"
    arm-none-eabi-gcc --version | head -n 1
    exit 0
}


# Functions for each action
function action_one() {
    sudo ln -sf /Applications/ARM/bin/arm-none-eabi-* /usr/local/bin    
    print_version_and_exit

}

function action_two() {
    sudo ln -sf /Applications/ArmGNUToolchain/12.2.rel1/arm-none-eabi/bin/arm-none-eabi-* /usr/local/bin
    print_version_and_exit
}

function action_three() {
    echo "You selected action 3"
    # Your code for action 3
}

# Function to display the menu and process user selection
function show_menu() {
    echo "===================="
    echo "Selected compiler:"
    arm-none-eabi-gcc --version  | head -n 1
    echo "===================="
    echo "  Main Menu"
    echo "===================="
    echo "1) arm-none-eabi-gcc (GNU Arm Embedded Toolchain 10.3-2021.07) 10.3.1 20210621 (release)"
    echo "2) arm-none-eabi-gcc 12.2.1 20221205 (Arm GNU Toolchain 12.2 (Build arm-12.24))"
    echo "3) Action 3"
    echo "q) Exit"
    echo "===================="
    echo -n "Choose an option: "
}

# Main program loop
while true; do
    show_menu
    read -r choice

    case $choice in
        1)
            action_one
            ;;
        2)
            action_two
            ;;
        3)
            action_three
            ;;
        q)
            echo "Exiting the program..."
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

    # Wait for any key press before showing the menu again
    echo "Press any key to continue..."
    read -n 1
done

