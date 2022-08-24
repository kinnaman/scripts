#!/bin/bash
#
# This script syncs the website folder's files with the server's files for fridayharbor.tech

# rsync -rav --progress ~/Documents/Code/FridayHarborTech/website/ root@fridayharbor.tech:/var/www/fridayharbortech/
rsync -vrP --delete-after ~/Documents/Code/FridayHarborTech/website/ root@fridayharbor.tech:/var/www/fridayharbortech/
