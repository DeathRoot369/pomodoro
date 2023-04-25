#!/usr/bin/env bash

if [ "$(whoami)" != "root" ]; then
    echo "You must be root to do this"
    echo "Enter [ sudo ./install ]"
    exit

else
  sudo apt update
  sudo apt install mplayer
  sudo apt install cowsay
  sudo apt install notify-send
  chmod +x pomodoro.sh
  
  exit
fi




#echo -e "Enter password \n"
#sudo apt update
#sudo apt install mplayer
#sudo apt install cowsay
#sudo apt install notify-send
