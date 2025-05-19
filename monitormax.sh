#!/bin/bash

# Define colors for output
RED='\033[0;91m'
GREEN='\033[0;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
CYAN='\033[0;96m'
MAGENTA='\033[0;95m'
NC='\033[0m' # No Color

# Function to display disk usage
disk_usage() {
    echo -e "\n${BLUE}==========[ Disk Usage ]==========${NC}"
    df -h | grep -v tmpfs | awk '{print $0}' | column -t | sed "s/^/${GREEN}/;s/$/${NC}/"
}

# Function to display CPU usage
cpu_usage() {
    echo -e "\n${CYAN}==========[ CPU Load ]==========${NC}"
    top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "% user, " $4 "% sys, " $8 "% idle"}' | sed "s/^/${YELLOW}/;s/$/${NC}/"
}

# Function to display RAM usage
ram_usage() {
    echo -e "\n${MAGENTA}==========[ RAM Usage ]==========${NC}"
    free -h | awk '{print $0}' | column -t | sed "s/^/${GREEN}/;s/$/${NC}/"
}

# Function to display the kernel version
kernel_name() {
    echo -e "\n${YELLOW}==========[ Kernel Version ]==========${NC}"
    echo -e "${BLUE}Kernel Version: $(uname -r)${NC}"
}

# Function to check all
check_all() {
    disk_usage
    cpu_usage
    ram_usage
    kernel_name
}

# Function to display the menu
menu() {
    while true; do
        echo -e "
${BLUE}1)${NC} Disk Usage
${CYAN}2)${NC} CPU Load
${GREEN}3)${NC} RAM Usage
${YELLOW}4)${NC} Kernel Version
${MAGENTA}5)${NC} Check All
${RED}0)${NC} Exit
"
        read -r -p "Choose an option: " choice
        case $choice in
            1) disk_usage ;;
            2) cpu_usage ;;
            3) ram_usage ;;
            4) kernel_name ;;
            5) check_all ;;
            0) echo -e "${RED}Exiting...${NC}"; break ;;
            *) echo -e "${RED}Invalid option. Please try again.${NC}" ;;
        esac
    done
}

# Run menu
menu
