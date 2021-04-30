#!/bin/bash 

TODAY=$(date +"%Y-%m-%d_at_%H:%m")


FONTS_DIR=../file_INC_FONTS

cp -r $FONTS_DIR /usr/share/fonts/TH-FONTS 

FILES_INC=FILES_INC


#   the program we need to install to setup i3wm 
pacman -S rofi feh nitrogen xxkb morc_menu --noconfirm

pacman -S arandr networkmanager network-manager-applet --noconfirm

pacman -S xdotool clipit xsel   --noconfirm

pacman -S blueman pulseaudio pavucontrol pa-applet  --noconfirm

pacman -S bmenu picom conky-i3 w3m --noconfirm

pacman -S lxsession lxappearance --noconfirm

pacman -S i3-gaps i3status-manjaro i3lock i3exit  --noconfirm

pacman -S xfce4-power-manager xfce4-terminal konsole gnome-terminal --noconfirm

pacman -S gnome-characters --noconfirm


# config zsh 1 Mar 2021
pacman -S zsh zsh-autosuggestions zsh-completions manjaro-zsh-config zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel10k --noconfirm 


pacman -S polkit-gnome libgnomekbd gnome-themes-extra gnome-online-accounts gnome-icon-theme-symbolic gnome-icon-theme gnome-desktop gnome-autoar --noconfirm 




# install networkmanager dmenu git from aur
pamac install networkmanager-dmenu

sleep 5s 
if [[ -f /etc/i3status.conf ]]; then
	mv /etc/i3status.conf /etc/i3status.conf.old 
fi
cp $FILES_INC/i3status.conf /etc/


# this is important if you use gnome
if [[ -f /etc/locale.gen ]]; then
    mv /etc/locale.gen /etc/locale.gen.old 
fi
cp $FILES_INC/locale.gen /etc 

if [[ -f /usr/share/conky/conky_mia ]]; then
	mv /usr/share/conky/conky_maia /usr/share/conky/conky_maia.old 
fi
cp $FILES_INC/conky_maia /usr/share/conky/ 







