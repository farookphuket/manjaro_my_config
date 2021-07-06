#!/bin/bash

# created this file on 31 Jan 2021 via virtualbox using manjaro xfce
# to run this file without the root permission
# you can feel free to edit them  just to install only
# the program that you need to use

# before in stall make sure that the package is up to date 
pamac update



# install with yay before snap because yay take less time than snap
./yay_install.sh


# install with pamac command 
./pamac_install.sh 

sudo -s ./pacman_install.sh



# install from snap store
#sudo -s ./snap_install.sh

