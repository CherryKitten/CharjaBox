#!/usr/bin/env bash

DIR=$(basename $PWD)
if [[ $DIR == "scripts" ]]; then
  cd ..
fi

if [[ ! -f inventory ]]; then
  read -p "What is the IP/Hostname/Domain of your Server? " serverip
  read -p "How should the server group be called? " groupname
  read -p "How should your settings folder be called? (This folder will be created as a subfolder of settings/) " settingsname
  printf "[$groupname]\n$serverip\n" > inventory
  printf "charjabox_settings_path: \"$settingsname\"\n" > group_vars/$groupname.yml
  cp -r settings/defaults/ settings/$settingsname/
else
  echo "It seems like you have already initialized CharjaBox. This script is for initializing a clean setup directly after cloning."
fi
