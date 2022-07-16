#!/bin/bash

# Author:      Morgan Kinnaman
# Description: Simple script for setting up a debian or Ubuntu web server for static sites
#              and a simple email server
# Version:     0.1

# PROJECT TO-DO:
# - Include 'dialog' or 'whiptail' from Linux (whiptail being deb pre-installed)

echo -e "
_  _ _ _  _ _  _ ____ _  _ ____ _  _ . ____ 
|_/  | |\ | |\ | |__| |\/| |__| |\ | ' [__  
| \_ | | \| | \| |  | |  | |  | | \|   ___] 

_ _ _ ____ ___     ____ ____ ____ _  _ ____ ____ 
| | | |___ |__]    [__  |___ |__/ |  | |___ |__/ 
|_|_| |___ |__]    ___] |___ |  \  \/  |___ |  \ 
                                                 
_ _  _ ____ ___ ____ _    _    
| |\ | [__   |  |__| |    |    
| | \| ___]  |  |  | |___ |___



"
sleep 3

# Sets up whether or not sudo is imployed in the program
if[$USER!="root"]; then
	download="sudo apt-get"
else
	download="apt-get"
fi

$download update -y
$download install -y nginx sudo certbot-nginx # git rsync etc

# Setting text editor
echo -e "
Which editor would you like to use?
	1 Vim
	2 NeoVim
	3 Emacs
	4 Nano

Enter a number to set editor or enter to skip: "
read EDITOR_CHOICE
if [$EDITOR_CHOICE=="1"]; then
	$download install vim
	# add vim as editor in bashrc
elif[$EDITOR_CHOICE=="2"]; then
	$download install nvim
	# add nvim as editor in bashrc
elif[$EDITOR_CHOICE=="3"]; then
	$download install emacs
	# add emacs as editor in bashrc
elif[$EDITOR_CHOICE=="4"]; then
	$download install nano
	# add nano as editor in bashrc
fi

# input for basic project & site names
echo "How many websites are you setting up on this server: "
read NUM_SITES
for NUM_SITES

# DISPLAY LINK TO DOCUMENTATION ON HOW TO SET UP DNS RECORDS FOR NEW USERS
# Show example if they haven't
# Ask them if they took those steps yet

# Set up nginx (including port opening, firewall, etc) , download certs for sites

# Add USERS and assign to SUDO group for some selected users
# remove ROOT, password, and port 22 access. Set exclusively give access to users with keys
# Close extra ports and remove unnecessary services

# Add option for email server install & setup: first NGINX/POP3, then NGINX/IMAP/SMTP
# ask for what emails should be made and set default/custom passwords for each 
# set up emails of users
# add extra verification steps & stuff to prevent emails being marked as spam on other email providers

# Tell user to save information on how to connect to the server (port, syntax, etc). Assume they're a noob.

# Populate guide static url on BLOG for post install information & further documentation

# ADD $EDITOR_CHOICE as $EDITOR in .bashrc
# alias repetitive nginx, systemctl, and log commands
source ~/.bashrc
