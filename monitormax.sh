#!/bin/bash

# Define colors for output
RED='\033[0;91m'    # Red
GREEN='\033[0;92m'  # Green
YELLOW='\033[0;93m' # Yellow
BLUE='\033[0;94m'   # Blue
CYAN='\033[0;96m'   # Cyan
MAGENTA='\033[0;95m' # Magenta
NC='\033[0m'        # No Color

# Function to display disk usage
disk_usage() {
    echo -e "${BLUE}==================== Disk Usage ====================${NC}\n"
    echo -e "${GREEN}$(df -h)${NC}"
}

# Function to display CPU usage
cpu_usage() {
    echo -e "\n${CYAN}==================== CPU Usage =====================${NC}\n"
    echo -e "${YELLOW}$(top -bn1 | grep "Cpu(s)")${NC}"
}

# Function to display RAM usage
ram_usage() {
    echo -e "\n${GREEN}==================== RAM Usage =====================${NC}\n"
    echo -e "${MAGENTA}$(free -h)${NC}"
}

# Function to display the kernel version
kernel_name() {
    echo -e "\n${YELLOW}==================== Kernel Version ==================${NC}\n"
    echo -e "${BLUE}Kernel Versions : $(uname -r)${NC}"
    echo -e "\n"
}

# Function to check all information
check_all() {
    disk_usage
    cpu_usage
    ram_usage
    kernel_name
}

# Function to display the menu
menu() {
    echo -ne "

${BLUE}1) Disk Usage
${CYAN}2) CPU Load
${GREEN}3) RAM Usage
${YELLOW}4) Kernel Version
${MAGENTA}5) Check All
${RED}0) Exit${NC}
"
    read -r -p "Choose an option: " choice
    case $choice in
        1) disk_usage ; menu;;
        2) cpu_usage ; menu;;
        3) ram_usage ; menu;;
        4) kernel_name ; menu;;
        5) check_all ; menu;;
        0) exit 0 ;;
        *) echo -e "${RED}Wrong option.${NC}";;
    esac
}

# Initial call to the menu function
menu
