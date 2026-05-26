#!/bin/bash

clear

yellow=$(tput setaf 3)
reset=$(tput sgr0)
bold=$(tput bold)

echo "${bold}${yellow}Updating system...${reset}"
apt-get update && apt-get upgrade -y

echo "${bold}${yellow}Installing Python...${reset}"
apt-get install -y python3 python3-pip

echo "${bold}${yellow}Installing required Python modules...${reset}"
pip3 install argparse pyfiglet termcolor

echo "${bold}${yellow}Setting executable permission...${reset}"
chmod +x port_scanner

echo "${bold}${yellow}Copying tool to /usr/bin/...${reset}"
cp port_scanner /usr/bin/

echo -e "\n*** done ***\n"

clear

port_scanner --help