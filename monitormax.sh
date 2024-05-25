#!/bin/bash

# Define colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to display disk usage
disk_usage() {
    echo -e "${GREEN}$(df -h)${NC}"
}

# Function to display CPU usage
cpu_usage() {
    echo -e "${YELLOW}$(top -bn1 | grep "Cpu(s)")${NC}"
}

# Function to display RAM usage
ram_usage() {
    echo -e "${CYAN}$(free -h)${NC}"
}

# Function to display the kernel version
kernel_name() {
    echo -e "Kernel Versions :" "${MAGENTA}$(uname -r)${NC}"
}
echo -e "${BLUE}==================== Disk Usage ====================${NC}\n"
disk_usage
echo -e "\n${BLUE}==================== CPU Usage =====================${NC}\n"
cpu_usage
echo -e "\n${BLUE}==================== RAM Usage =====================${NC}\n"
ram_usage
echo -e "\n${BLUE}==================== Kernel Version ==================${NC}\n"
kernel_name
echo -e "\n"
