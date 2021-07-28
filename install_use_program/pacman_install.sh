 #!/bin/bash


 #  please note that if any of the program you're not using just comment it
 #  with (put the # sign before pacman)


# cp ../DESKTOP_SETUP_I3WM/FILES_INC/locale.gen /etc

#locale-gen

# update by pacman 
pacman -Syyuu --noconfirm


#   need this to complie
pacman -S  cmake base-devel go nodejs npm --noconfirm

#   file browser 
pacman -S  krusader nautilus mc  --noconfirm

#   web browser 
pacman -S chromium  --noconfirm


# the python library
pacman -S tk --noconfirm

# terminal 
pacman -S gnome-terminal konsole xfce4-terminal --noconfirm 

# =============================Screen Capture =================================
#  flameshot has been remove 13 Jul 2021 using Spectacle instead
#     
pacman -S  obs-studio  spectacle  --noconfirm

# =============================================================================

#   background setting and image 
pacman -S  gthumb  gimp --noconfirm

#   system info 
pacman -S neofetch --noconfirm 

# iso image writer openSUSE
pacman -S imagewriter --noconfirm

#   download video from youtube
pacman -S   youtube-dl   --noconfirm

# install java for dbeaver
pacman -Sy jre11-openjdk-headless jre11-openjdk jdk11-openjdk --noconfirm
pacman -Sy openjdk11-doc openjdk11-src --noconfirm

# dbeaver need the java 11
archlinux-java set java-11-openjdk

# vscode atom
pacman -Sy vscode atom --noconfirm

# dbeaver 
pacman -Sy dbeaver sqlitebrowser --noconfirm



#   clipboard 
pacman -S xclip --noconfirm

#   Date 17 Feb 2021 KTouch learn touch typing
pacman -S ktouch --noconfirm

#  subtitle editor , video editing tool
pacman -S aegisub kdenlive --noconfirm

#   play sound | edit sound | show keypress on screen
pacman -S  audacious  screenkey  --noconfirm


# =============== 28 Jul 2021 ================================================= 
# knotes write note on the screen 
pacman -S knotes --noconfirm



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






