#!/bin/bash 


FILES_DIR=FILES_INC

NVIM_DIR=../nvim

POWERLINE=../powerline

RANGER=../ranger



# copy single file
cp $FILES_DIR/.vimrc ~/

cp $FILES_DIR/.tmux.conf ~/

cp $FILES_DIR/.bashrc ~/

# copy directory
cp -r $FILES_DIR/.vim ~/ 

cp -r $NVIM_DIR ~/.config 

cp -r $RANGER ~/.config

cp -r $POWERLINE ~/.config


sudo -s ./sudo_install.sh
