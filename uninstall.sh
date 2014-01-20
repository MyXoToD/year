#!/bin/sh
echo "Uninstall year..."
sudo rm /usr/local/bin/year
echo "Deleted: /usr/local/bin/year"
sudo rm ~/year.txt
echo "Deleted: ~/year.txt"
sudo rm /etc/bash_completion.d/year
echo "Removed autocompletition"
echo "Successfully uninstalled year."