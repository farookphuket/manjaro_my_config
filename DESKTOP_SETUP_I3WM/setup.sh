#!/bin/bash


#   copy user program's list into file
#   just incase somthing goes wrong


# today time
TODAY=$(date +"%Y-%m-%d_at_%H:%m")

# create backup directory 
mkdir ~/Documents/backup_conf 
BACKUP_PATH=~/Documents/backup_conf

pacman -Q > ~/Desktop/$USER-computer-before.txt

#   copy the xxkb config to home directory
cp FILES_INC/.xxkbrc ~/

#   make xxkb directory
mkdir ~/xxkb




# copy file
./file_copy.sh



sudo -s ./sudo_install.sh

xfce4-terminal -e "cmus"

if [[ -d ~/.config/cmus ]]; then
    # copy the cmus reload playlist file 
    cp FILES_INC/update-cmus-library.sh ~/.config/cmus  
fi


if [[ -d ~/.config/i3 ]] && [[ -f ~/.config/i3/config ]]; then
    mv ~/.config/i3/config ~/.config/i3/config.old
    cp config ~/.config/i3
else
    mkdir ~/.config/i3
    cp config ~/.config/i3
fi

    


# remove autostart program to prevent the un-need program to start at boot 
if [[ -d ~/.config/autostart ]] && [[ -n `ls -A ~/.config/autostart` ]]; then
    cp -r ~/.config/autostart $BACKUP_PATH/autostart.old_$TODAY
    rm -rf ~/.config/autostart/*
fi



# sent output of the program list after install
pacman -Q > ~/Desktop/$USER-computer_after.txt


# change SHELL 
chsh -s /bin/zsh


systemctl --user enable pulseaudio


echo "-----------------------------------------------------"
echo "the config file has been copied "
echo "please logout and log back in to i3 session "
echo "in order to finish with this operation"
echo "----------- Program terminated -----------------------"
sleep 5s
exit
