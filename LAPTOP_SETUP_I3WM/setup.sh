#!/bin/bash 


#   copy user program's list into file 
#   just incase somthing goes wrong
pacman -Q > ~/Desktop/$USER-computer-before.txt 


TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")
mkdir ~/Documents/backup_conf
BACKUP_PATH=~/Documents/backup_conf


# copy file 
./files_copy.sh

# install the require program
sudo -s ./sudo_install.sh



# run cmus 
xfce4-terminal -e "cmus"

sleep 5s

pacman -Q > ~/Desktop/program_on-$USER-computer_after.txt

if [[ -d ~/.config/cmus ]]; then
    # copy the script for update cmus
    cp $FILES_INC/update-cmus-library.sh ~/.config/cmus 
fi




# cop the i3 config 
if [[ -d ~/.config/i3 ]] && [[ -f ~/.config/i3/config ]]; then
    # make backup if there is an old one
    mv ~/.config/i3/config $BACKUP_PATH/i3_config.old_$TODAY
    cp $FILE_INC/config ~/.config/i3 
else
    # if the config doesn't exit then create one now
    mkdir ~/.config/i3 
    cp $FILE_INC/config ~/.config/i3
fi

# check if there is any autorun program 
# if anything so we make a backup then remove it content
if [[ -d ~/.config/autostart ]] && [[ -n `ls -A ~/.config/autostart` ]]; then
    cp -r ~/.config/autostart $BACKUP_PATH/autostart.old_$TODAY/
    rm -rf ~/.config/autostart/*
fi


# change SHELL 
chsh -s /bin/zsh

# enable pulseaudio 
systemctl --user enable pulseaudio 


echo "--------------- process has Success   ---------------------------"
echo "the config file has been copied!"
echo " please logout then log back in with i3 session "
echo " your configuration now has been done please enjoy"
echo " ------------- Program terminated -------------------------------"

sleep 5s

exit
