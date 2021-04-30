#!/bin/bash 





echo "================= Dear $USER =================================="
echo " this will download pictures, icons ,themes "
echo " the process that this script do is :"
echo " - download the files from gitlab.com"
echo " - install the require program to setup i3-wm"
echo " the process will take more than 40 minute "
echo " you may have to put your password in during the prcessing..."
echo "please be patient."
echo " =============================================================="



FILES_INC=FILES_INC


# fonts directory 
FONTS_DIR=../file_INC_FONTS/


#   copy the xxkb config to home directory
cp $FILES_INC/.xxkbrc ~/

#   make xxkb directory
mkdir ~/xxkb 



if [[ -d ~/Pictures/Wallpapers ]] && [[ -n `ls -A ~/Pictures/Wallpapers` ]]; then
    # found wallpapers skip this step 
    pushd ~/Pictures/Wallpapers
    git clone https://gitlab.com/farookphuket/wallpapers.git .
    echo "Wallpapers has been appended"
    popd
fi
#   clone the wallpaper file 
mkdir -p ~/Pictures/Wallpapers
pushd ~/Pictures/Wallpapers
git clone https://gitlab.com/farookphuket/wallpapers.git ~/Desktop/Wallpapers


# copy fonts 
sudo cp -r $FONTS_DIR /usr/share/fonts/THAI-FONTS/ 

# create dir in user Home 
mkdir ~/TEMP_FILES

pushd ~/TEMP_FILES 

# clone the zsh theme
git clone https://gitlab.com/farookphuket/my_zsh.git 

# copy zsh 
cp ~/TEMP_FILES/my_zsh/ZSH/.zshrc ~/
sudo cp -r ~/TEMP_FILES/my_zsh/ZSH/zsh/ /usr/share/
sudo cp -r ~/TEMP_FILES/my_zsh/ZSH/zsh-theme-powerlevel10k/ /usr/share/


# clone icons
git clone https://gitlab.com/farookphuket/my_icons.git

# Icons
# Lyra-red-dark , Infinity-Dark-Icons , Mintjaro ,whiskermenu-manjaro.svg 
# Hey-orange , BeautyLine , CRUSHED-Limes-Suru , HighContrast 
# RevengeShip , candy-icons 
ICON_DIR=~/TEMP_FILES/my_icons/icons

# Themes 
# HighContrast, Raleigh
THEME_DIR=~/TEMP_FILES/my_icons/themes

DES_ICON=/usr/share/icons/
DES_THEME=/usr/share/themes/

# copy icons
sudo cp  $ICON_DIR/whiskermenu-manjaro.svg $DES_ICON
sudo cp -r $ICON_DIR/Lyra-red-dark/ $DES_ICON
sudo cp -r $ICON_DIR/Mintjaro/ $DES_ICON
sudo cp -r $ICON_DIR/Infinity-Dark-Icons/ $DES_ICON
sudo cp -r $ICON_DIR/BeautyLine/ $DES_ICON
sudo cp -r $ICON_DIR/Hey-orange/ $DES_ICON
sudo cp -r $ICON_DIR/CRUSHED-Limes-Suru/ $DES_ICON
sudo cp -r $ICON_DIR/RevengeShip/ $DES_ICON
sudo cp -r $ICON_DIR/candy-icons/ $DES_ICON
sudo cp -r $ICON_DIR/HighContrast/ $DES_ICON

sudo cp -r $THEME_DIR/HighContrast/ $DES_THEME
sudo cp -r $THEME_DIR/Raleigh/ $DES_THEME


popd


# config file has already by sudo_install.sh
