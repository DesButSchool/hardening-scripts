#!/bin/bash
echo "CyberTiger Hardening Script for Mint21"

# Check permissions
if [ $(id -u) -ne 0 ]
  then printf "\033[31;1;4mPlease run with sudo\033[0m\n"
  exit
fi

# Prompt for user consent
echo "Before running, please ensure that you have completed all Forensic Questions."
read -p "Have you completed all forensic questions? (Y/N)" -n 1 -r
if [[ ! $REPLY =~ ^[Yy] ]]
then 
    printf "\nExiting\n"
    exit 1
fi
printf "\nProceeding\n"

