#!/bin/bash

if [ ! -f ./system-files/emails.txt ] || [ ! -s ./system-files/emails.txt ]
then
    echo "Please make a emails.txt file and write your email address. (See README.md for details)"
    exit 1
fi

cat ./system-files/emails.txt | while read line
do
    cat ./system-files/message.txt | mutt -a $1 -s "Automatic Backup Mail by Mutt" -- $line  # $1 stands for the file to send
done

echo "Emails Sent!"