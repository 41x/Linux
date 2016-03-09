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
    2) echo "enter name:" && read name &&  $([ -e "$name" ] || [ -d "$name" ]) && rm -R "$name" || echo "Такого 
файла/папки нет";;
    3) echo "enter name:"
       read name
       echo "enter new name:" 
       read name2
       if [ ! -e "$name" ] && [ ! -d "$name" ]; then
        echo "Такой папки/файла нет"
       elif [ "$name" == "$name2" ]; then
        echo "Новое и старое имена совпадают"
       else
        mv "$name" "$name2"
       fi
       ;;
    4) exit;;
 esac 
done