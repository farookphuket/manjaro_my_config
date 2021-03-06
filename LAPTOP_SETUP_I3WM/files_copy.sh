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

# clone the wallpapers
git clone https://gitlab.com/farookphuket/wallpapers.git .



# create dir in user Home
mkdir ~/TEMP_FILES

pushd ~/TEMP_FILES

# clone the zsh theme
git clone https://gitlab.com/farookphuket/my_zsh.git

# copy zsh
cp ~/TEMP_FILES/my_zsh/ZSH/FOR_MANJARO/.zshrc ~/

# zsh 
sudo cp -r ~/TEMP_FILES/my_zsh/ZSH/FOR_MANJARO/zsh/ /usr/share/

# zsh-theme
sudo cp -r ~/TEMP_FILES/my_zsh/ZSH/zsh-theme-powerlevel10k/ /usr/share/


# make dir for the zsh auto suggestion
mkdir -p ~/.zsh/zsh-autosuggestions/

# create the zsh-autosuggestions file
touch ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh




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
sudo cp -r $ICON_DIR/Lyra-red/ $DES_ICON
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







# back to run script
popd


# config file has already by sudo_install.sh
