#!/bin/bash 

pacman -Syu --noconfirm

# install code editor package
pacman -S vscode atom tmux powerline  --noconfirm
pacman -S gvim neovim python-pynvim vim-clap tree --noconfirm

pacman -Sy php-intl php-xml php-zip php-curl  --noconfirm 

pacman -S  apache php php-apache php-sqlite filezilla composer --noconfirm
pacman -S  sqlitebrowser dbeaver  --noconfirm
pacman -S  nodejs npm --noconfirm



