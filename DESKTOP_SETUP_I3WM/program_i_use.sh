#!/bin/bash 


echo "================================== Warning! ============================="
echo " all of the program that will be install are the program I am use"
echo " you can feel free to comment each line of them if you're not going to "
echo " use those program by put # sign infront of the line "
echo " ======================================================================= "


sudo pacman -S cmake base-devel go nodejs npm --noconfirm

# virt-manager to replace virtualbox
./install_virt-manager.sh
