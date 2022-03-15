# Program:  shieldbadges
# Author:   Morgan Kinnaman
# License:  GPL-3.0
# About:    This is a program to generate shield.io badges

print('''
____ _  _ _ ____ _    ___  ___  ____ ___  ____ ____ ____ 
[__  |__| | |___ |    |  \ |__] |__| |  \ | __ |___ [__  
___] |  | | |___ |___ |__/ |__] |  | |__/ |__] |___ ___] 

ShieldBadges generates shield.io badges fron user inputs
and writes them to badges.md

''')
while True:
    makeBadge = input("Would you like to create a new badge? y/n   ")
    if makeBadge != "y" and makeBadge != "n":
        print("That is not a valid input. Please respond with y or no")
    if makeBadge == "y":
        badgeText = input("Badge text: ")
        simpleIcon = input("Simple Icon name: ")
        badgeColor = input("Badge color: ")
        
        simpleIcon = simpleIcon.lower()
        badgeColor = badgeColor.replace('#','')

        newBadge = "https://img.shields.io/badge/" + badgeText + "-" + badgeColor + "?logo=" + simpleIcon + "&logoColor=white&style=for-the-badge"
        print(newBadge)
        with open('badges.md', 'a') as output:
            output.write(newBadge)
    if makeBadge == "n":
        break

