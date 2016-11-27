#!/bin/bash 
#Just for entertainment!!!!
#Copy All File's or specific file type from usb flash drive & Android Device's!!!
# Abbas Ls 
clear
name="$(blkid | grep /dev/sdb | cut -d '"' -f2)"  #usb Flash Drive
name2="$(ls /run/user/0/gvfs/)" #Android Device Mounted Location
echo -e "1.Usb Flash Drive\n2.Usb Flash drive(specific file type)\n3.Android Device\n4.Android Device(specific file type)\nChoose a Option:"
read o
clear
if [ "$o" == "1" ];then
     cp -a /media/root/$name ~/Documents/abbas-ls
     echo "It's Done!";
    
     elif [ "$o" == "2" ];then
        read -p "Enter file type : " type
        find /media/root/$name -name *.$type | cpio -pdm ~/Documents/abbasls 
        echo "It's Done!"
    
    elif [ "$o" == "3" ];then
        cp -a /run/user/0/gvfs/$name2 ~/Documents/abbas-ls
        echo "It's Done!"

    elif [ "$0" == "4" ];then
        read -p "Enter file type : " ta
        find /run/user/0/gvfs/$name2 -name *.$ta ~/Documents/abbas-ls 
        echo "It's Done!"
fi 

