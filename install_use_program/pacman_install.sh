 #!/bin/bash


 #  please note that if any of the program you're not using just comment it
 #  with (put the # sign before pacman)


cp ../DESKTOP_SETUP_I3WM/FILES_INC/locale.gen /etc

locale-gen

# update by pacman 
pacman -Syu --noconfirm


#   need this to complie
pacman -S  cmake base-devel go nodejs npm --noconfirm

#   file browser 
pacman -S  krusader nautilus mc  --noconfirm

#   web browser 
pacman -S brave chromium  --noconfirm


# the python library
pacman -S tk --noconfirm

# terminal 
pacman -S gnome-terminal konsole xfce4-terminal --noconfirm 

#   screen capture 
pacman -S  obs-studio  flameshot   --noconfirm

#   background setting and image 
pacman -S  gthumb  gimp --noconfirm

#   system info 
pacman -S neofetch --noconfirm 

# iso image writer openSUSE
pacman -S imagewriter --noconfirm

#   download video from youtube
pacman -S   youtube-dl   --noconfirm

#   clipboard 
pacman -S xclip --noconfirm

#   Date 17 Feb 2021 KTouch learn touch typing
pacman -S ktouch --noconfirm

#  subtitle editor , video editing tool
pacman -S aegisub kdenlive --noconfirm

#   play sound | edit sound | show keypress on screen
pacman -S audacity audacious  screenkey  --noconfirm

#   mlocate on 24 Feb 2021
pacman -S mlocate --noconfirm 


# snap by default will not enable so make sure that we have snap enable 
# before we start to install any of program from the snap store
# this line has added on 31 Mar 2021
# pacman -S snapd --noconfirm 

systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap




echo "----------------- Pacman Install Has Done-----------------------"
echo " pacman has done it's operation "
echo "----------------------------------------------------------------"


sleep 5s

#   updatedb 
updatedb






