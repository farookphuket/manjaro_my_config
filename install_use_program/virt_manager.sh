#!/bin/bash 


#  install virt manager to replace virtualbox 

sudo pacman -S virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat


sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

sudo usermod -aG libvirt $USER 


echo "================================= Dear $USER ========================"
echo " virt-manager has been installed please reboot your system in order"
echo " to start using virt-manager "
echo " ===================================================================="
