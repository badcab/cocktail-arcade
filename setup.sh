#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root, or run 'sudo !!'"
  exit 1
fi

apt-get update
apt-get upgrade -y
apt-get install python3-dev mame git sed python3-ASUS.gpio

mkdir -p /arcade/rom_0
mkdir -p /arcade/rom_1
mkdir -p /arcade/rom_2
mkdir -p /arcade/rom_3
mkdir -p /arcade/rom_4
mkdir -p /arcade/rom_5
mkdir -p /arcade/rom_6
mkdir -p /arcade/rom_7
mkdir -p /arcade/rom_8
mkdir -p /arcade/rom_9
mkdir -p /arcade/rom_A
mkdir -p /arcade/rom_B
mkdir -p /arcade/rom_C
mkdir -p /arcade/rom_D
mkdir -p /arcade/rom_E
mkdir -p /arcade/rom_F

cd /arcade
#git clone the repo housing this script

#place the config tpl in each directroy from the roms
#startx
#consider downloading artwork???

#do the needful bios and linking for mame to work or print directions to the screen

#print a message saying that setup is done, place roms in folders and run another script to set them up

#after development is done be sure to add the run.sh script to run at boot, also set user to auto login

#wget http://dlcdnet.asus.com/pub/ASUS/mb/Linux/Tinker_Board_2GB/GPIO_API_for_Python.zip
#unzip GPIO_API_for_Python.zip
#cd GPIO_API_for_Python/
#sudo python setup.py install
#python3 setup.py install
#rm GPIO_API_for_Python.zip

#find out if removing this directory is allowed
#cd ..
#rm -r GPIO_API_for_Python/

#sed -i '/GRUB_CMDLINE_LINUX_DEFAULT="text"/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' /etc/default/grub
#update-grub
#linaro is the default user on the tiner board os
#exec /sbin/getty -8 38400 tty6 -a linaro

chmod -R 777 /arcade
