#!/bin/bash

app_name=postman
literal_name_of_installation_directory=".tarball-installations"
general_installation_directory="$HOME/$literal_name_of_installation_directory"
postman_installation_directory="$general_installation_directory/postman"
local_bin_path="$HOME/.local/bin"
local_application_path="$HOME/.local/share/applications"
app_bin_in_local_bin="$local_bin_path/$app_name"
desktop_in_local_applications="$local_application_path/$app_name.desktop"

echo "Removing the installation from your home"
rm -rf $postman_installation_directory
rm $app_bin_in_local_bin
rm $desktop_in_local_applications
echo "Uninstallation is successfull"
sleep 1
echo "Happy Hacking!"
sleep 1
