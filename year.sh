#!/bin/sh
if [ -z "$1" ]; then
    echo "
    USAGE\
\n
    example:
        year "managed to get a girls phone number, things are going great"

        year "managed to get a girls phone number, things are going great" --date 03-01-2014
    
    Valid dates are in the following format: %d-%m-%Y
    "
    echo "Would you like to see what you did this year? [y/N]"
    read ANSWER
    if [ "$ANSWER" = "y" ];then
        less ~/year.txt
    fi
    exit
fi

if [ "$1" = "list" ];then
    less ~/year.txt
    exit
fi
if [ "$1" = "trim" ] || [ "$1" = "delete" ] || [ "$1" = "purge" ] || [ "$1" = "fuckthepolice" ] || [ "$1" = "reset" ];then
    cat /dev/null > ~/year.txt
    exit
fi

MSG="$1"
TODAY=`date +"%m-%d-%Y"`

while [ "$1" != "" ]; do
    case $1 in
        -d | --date)
            shift
            TODAY="$1"
            ;;
    esac
    shift
done

EXISTS=$(egrep -e "$TODAY" ~/year.txt | wc -l)

if [ "$EXISTS" -eq "1" ];then
    echo "\t\t$MSG" >> ~/year.txt
else
    echo "$TODAY\t$MSG" >> ~/year.txt
fi
