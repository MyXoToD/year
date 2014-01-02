#!/bin/sh
PWD=`pwd`
sudo rm /usr/local/bin/year
sudo ln -s "$PWD/year.sh" /usr/local/bin/year
echo "created executable in /usr/local/bin/year"
touch ~/year.txt
echo "created ~/year.txt"
