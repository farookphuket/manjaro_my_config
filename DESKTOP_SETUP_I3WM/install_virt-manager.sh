#!/bin/bash




sudo pacman -S virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat --noconfirm

# enable libvirt on boot
sudo systemctl enable libvirtd

# start libvirt now
sudo systemctl start libvirtd


# add user to group
sudo usermod -G libvirt -a $USER


echo "============================= Please Note ==============================="
echo " you may have to reboot after this process has done "
echo " in order to start using virt-manager "
echo "========================================================================="
