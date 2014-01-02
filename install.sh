#!/bin/sh
PWD=`pwd`
sudo rm /usr/local/bin/year
sudo ln -s "$PWD/year.sh" /usr/local/bin/year
echo "created executable in /usr/local/bin/year"
rm ~/year.txt
touch ~/year.txt
rm "$PWD/year.txt"
ln -s ~/year.txt "$PWD/year.txt"
echo "created ~/year.txt and link to git directory"
