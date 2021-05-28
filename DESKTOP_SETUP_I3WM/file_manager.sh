#!/bin/bash





# make the directory for the confiles
mkdir ~/TEMP_FILES

TEMP_DIR=~/TEMP_FILES

# cd in the TEMP_FILES folder
pushd ~/TEMP_FILES


# ====================== ZSH ZONE START ======================================
# clone the zsh from gitlab
git clone https://gitlab.com/farookphuket/my_zsh.git

# now we have the folder call my_zsh and it content

# copy the zsh config folder to /usr/share/
sudo cp -r $TEMP_DIR/my_zsh/ZSH/FOR_MANJARO/zsh /usr/share/


# copy the zsh-theme config folder to /usr/share/
sudo cp -r $TEMP_DIR/my_zsh/ZSH/zsh-theme-powerlevel10k/ /usr/share/

# copy the .zshrc config file to home folder
cp $TEMP_DIR/my_zsh/ZSH/FOR_MANJARO/.zshrc ~/

# make dir for the zsh auto suggestion
mkdir -p ~/.zsh/zsh-autosuggestions/

# create the zsh-autosuggestions file
touch ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# ====================== ZSH ZONE END =========================================

# ====================== ICON ZONE START ======================================


# clone icons
git clone https://gitlab.com/farookphuket/my_icons.git

ICONS_DIR=~/TEMP_FILES/my_icons/icons
THEMES_DIR=~/TEMP_FILES/my_icons/themes


# icons
# Infinity-Dark-Icons
# whiskermenu-manjaro.svg
# Lyra-red-dark
# Mintjaro
# RevengeShip
sudo cp -r $ICONS_DIR/whiskermenu-manjaro.svg /usr/share/icons

sudo cp -r $ICONS_DIR/RevengeShip /usr/share/icons

sudo cp -r $ICONS_DIR/Lyra-red-dark /usr/share/icons

sudo cp -r $ICONS_DIR/Lyra-red /usr/share/icons

sudo cp -r $ICONS_DIR/Mintjaro /usr/share/icons

# ====================== ICON ZONE END   ======================================


# ====================== THEME ZONE START   ===================================

# Themes
# Raleigh
# HighContrast

sudo cp -r $THEMES_DIR/Raleigh/ /usr/share/themes/
sudo cp -r $THEMES_DIR/HighContrast/ /usr/share/themes/


# ====================== THEME ZONE END   =====================================


# ====================== FONTS ZONE START   ===================================
# clone fonts from gitlab
git clone https://gitlab.com/farookphuket/my_fonts.git

# fonts dir [3270 Hack TH-FONT]


FONTS_DIR=~/TEMP_FILES/my_fonts/FONTS

# copy font to /usr/share/fonts
sudo cp -r $FONTS_DIR/3270/ /usr/share/fonts/
sudo cp -r $FONTS_DIR/Hack/ /usr/share/fonts/
sudo cp -r $FONTS_DIR/TH-FONT/ /usr/share/fonts/


# ====================== FONTS ZONE END   =====================================


# ====================== Wallpapers ZONE START   ==============================

# check if the Wallpapers dir is exited
if [[ -d ~/Pictures/Wallpapers ]] && [[ -n `ls -A ~/Pictures/Wallpapers `  ]]; then

    pushd ~/Pictures/Wallpapers
    git clone https://gitlab.com/farookphuket/wallpapers.git .
    sleep 5s
    popd

fi

# make dir for the wallpapers
mkdir ~/Pictures/Wallpapers
pushd ~/Pictures/Wallpapers

# clone wallpapers
git clone https://gitlab.com/farookphuket/wallpapers.git .





# ====================== Wallpapers ZONE END   ================================








# back to run script
popd
