#!/bin/bash
# Simple wifi tester by pip10127
# Dependencies ping and NetworkManager
if ! ping archlinux.org -c 3; then
  echo -e "\033[31mWifi not found\033[0m"
  nmcli dev wifi connect #SSID password #PASSWORD
  echo -e "\033[32mWifi connected successfully\033[0m"
else
  echo -e "\033[32mWifi is active\033[0m"
fi
