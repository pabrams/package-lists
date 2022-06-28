#!/bin/zsh

yay -S evdi-git --noconfirm
yay -S displaylink --noconfirm
systemctl enable displaylink.service
modprobe udl

evdiConfigDest="/etc/X11/xorg.conf.d/20-evdi.conf"
cp ./evdiConfigFile.txt $evdiConfigDest

xrandr --output DP-3 --auto --primary --output DP-4 --auto --right-of DP-3 --output DVI-I-1-1 --auto --right-of DP-4 --output DVI-I-2-2 --auto --right-of  DVI-I-1-1
