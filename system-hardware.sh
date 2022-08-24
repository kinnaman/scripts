#!/bin/bash
# Creates a text file with pertinent system information for upgrading and buying parts. 
# NOTE: This is meant for consumer PCs & there is no possible way to check which power supply is currently installed via the command line.

echo "-------------" >> system-info.txt

sudo dmidecode | grep -A3 '^System Information' >> system-info.txt

sudo dmidecode | --type memory >> system-info.txt

sudo dmidecode | --type processor >> system-info.txt

# Graphcis card
lspci | grep VGA >> system-info.txt
