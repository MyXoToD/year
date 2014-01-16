#!/bin/sh
PWD=`pwd`
echo "Uninstall year..."
sudo rm /usr/local/bin/year
echo "Deleted: /usr/local/bin/year"
sudo rm ~/year.txt
echo "Deleted: ~/year.txt"
echo "Successfully uninstalled year."