#!/bin/bash

# generate a random number from 1 to 59999
random="$(shuf -i1-59999 -n1)"

# temp place to save the picture. change this to match your needs
picture="/home/seneca/Pictures/temp.jpg"

wget -O ${picture} "https://www.thiswaifudoesnotexist.net/example-${random}.jpg"
gsettings set org.gnome.desktop.background picture-uri "file://${picture}"
gsettings set org.gnome.desktop.background picture-options "centered"

# to install, add the below line into your crontab using `crontab -e`
# `*/1 * * * * /bin/bash /path/to/script.sh`
# and save the crontab.
# enjoy!