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

FILES_DIR=FILES_INC


# copy the config file for virtual display 
# if this testing in virt-manager
cp $FILES_DIR/vbox_screen.sh ~/


# install some required program
sudo -s ./sudo_install.sh

# copy the config files
./file_manager.sh

xfce4-terminal -e "cmus"

if [[ -d ~/.config/cmus ]]; then
    # copy the cmus reload playlist file
    cp $FILES_DIR/update-cmus-library.sh ~/.config/cmus/
else
    mkdir -p ~/.config/cmus
    cp $FILES_DIR/update-cmus-library.sh ~/.config/cmus/
fi


if [[ -d ~/.config/i3 ]] && [[ -f ~/.config/i3/config ]]; then
    mv ~/.config/i3/config ~/.config/i3/config.old
    cp $FILES_DIR/config ~/.config/i3/
else
    mkdir -p ~/.config/i3
    cp $FILES_DIR/config ~/.config/i3/
fi

# copy command folder to i3 config folder
cp -r $FILES_DIR/command/ ~/.config/i3/



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


echo "==================== ✅ SUCCESS $USER ==================================="
echo "the config file has been copied "
echo "please logout and log back in to i3 session "
echo "inorder to finish with this operation"
echo " "
echo "----------- Program terminated -----------------------"
echo "========================================================================="
