#!/bin/bash
# Title: Backup Script
# Author: Morgan Kinnaman
# Version: 0.1
# About: DANGEROUS script for backing up my files to my external hard drive. Do not use this as is on your system as it could destroy everything. I am not responsible for your blunders.
# License: GPL-3.0
lsblk
echo 'Please select mounted external drive'
read $EXTERNAL_DRIVE
EXCLUDE_FILES="'.steam', '.aspell*', '
sudo rsync -avzn --exclude={$EXCLUDE_FILES} /home/$USER/ /mnt/$EXTERNAL_DRIVE/Backup/
