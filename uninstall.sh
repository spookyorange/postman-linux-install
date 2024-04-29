#!/bin/bash

literal_name_of_installation_directory=".tarball-installations"
general_installation_directory="$HOME/$literal_name_of_installation_directory"
postman_installation_directory="$general_installation_directory/postman"

echo "Removing the installation from your home"
rm -rf $postman_installation_directory
rm $HOME/.local/bin/postman
rm $HOME/.local/share/applications/postman.desktop
echo "Uninstallation is successfull"
sleep 1
echo "Happy Hacking!"
sleep 1
