#!/bin/bash
while [ 1 -eq 1 ]
do
 echo "1) list content"
 echo "2) remove"
 echo "3) rename"
 echo "4) exit"
 read reply;
 case $reply in
    1) echo `ls`;;
    2) echo "enter name:" && read name && rm -R "$name";;
    3) echo "enter name:" && read name && echo "enter new name:" && read name2 && mv "$name" "$name2";;
    4) exit;;
 esac 
done