#!/bin/bash

app_name=postman
literal_name_of_installation_directory=".tarball-installations"
general_installation_directory="$HOME/$literal_name_of_installation_directory"
app_installation_directory="$general_installation_directory/$app_name"
official_package_location=https://dl.pstmn.io/download/latest/linux_64
local_bin_path="$HOME/.local/bin"
local_application_path="$HOME/.local/share/applications"
app_bin_in_local_bin="$local_bin_path/$app_name"
desktop_in_local_applications="$local_application_path/$app_name.desktop"
icon_path=$app_installation_directory/icons/icon_128x128.png
executable_path=$app_installation_directory/Postman

echo "Starting installation, method: Local Install"
echo "Local installation location $general_installation_directory"

sleep 1

echo "Checking if old files exist"
if [ -f $app_bin_in_local_bin ]; then
  echo "Old bin file detected, removing..."
  rm $app_bin_in_local_bin
fi

if [ -d $app_installation_directory ]; then
  echo "Old app files are found, removing..."
  rm -rf $discord_installation_directory
fi

if [ -f $desktop_in_local_applications ]; then
  echo "Old bin file detected, removing..."
  rm $desktop_in_local_applications
fi


curl -o hello.tar.gz $official_package_location
echo "Installed the tarball from official source"

tar -xvzf hello.tar.gz
echo "Tarball extracted successfull"

if [ ! -d $general_installation_directory ]; then
  echo "Creating the $general_installation_directory directory for installation"
  mkdir $general_installation_directory
fi

echo "Moving application to the desired local machine location"
mv ./Postman/app $app_installation_directory

echo "Removing leftovers from installation"
rm -rf ./Postman
rm -rf ./hello.tar.gz

echo "Creating the bin file and filling it with necessary data"
if [ ! -d $local_bin_path ]; then
  echo "$local_bin_path not found, creating it for you"
  mkdir $local_bin_path
fi

touch $app_bin_in_local_bin
chmod u+x $app_bin_in_local_bin
echo "#!/bin/bash
$executable_path" >> $app_bin_in_local_bin

echo "Creating the desktop file for your DE to recognize"

if [ ! -d $local_application_path ]; then
  echo "Creating the $local_application_path directory for desktop file"
  mkdir $local_application_path
fi

touch $desktop_in_local_applications

echo "
[Desktop Entry]
Name=Postman
Keywords=API;http;json;web;
Exec=$executable_path
Icon=$HOME/$literal_name_of_installation_directory/postman/icons/icon_128x128.png
Icon=$icon_path
Terminal=false
Type=Application
Categories=API;json;
" >> $desktop_in_local_applications

echo "Done and done"
sleep 2
echo "Happy Hacking!"
sleep 2
