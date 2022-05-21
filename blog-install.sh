#!/bin/bash

# Author:      Morgan Kinnaman
# Description: Simple script for setting up a debian or Ubuntu web server for static sites and emails
# Version:     0.1

# Correctly sets up 

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
$download install -y nginx sudo certbot-nginx # necessary packages

# Setting text editor
echo -e "
Which editor would you like to use?
	1 Vim
	2 NeoVim
	3 Emacs
	4 Nano

Enter a number to select your preferred text editor: "
read EDITOR_CHOICE
if [$EDITOR_CHOICE=="2"]; then
	$download install nvim
elif[$EDITOR_CHOICE=="3"]; then
	$download install emacs
elif[$EDITOR_CHOICE=="4"]; then
	$download install nano
fi

