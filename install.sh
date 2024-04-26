literal_name_of_installation_directory=".tarball-installations"
general_installation_directory="$HOME/$literal_name_of_installation_directory"
postman_installation_directory="$general_installation_directory/postman"
official_package_location=https://dl.pstmn.io/download/latest/linux_64

echo "Starting installation, method: Local Install"
echo "Local installation location $general_installation_directory"

curl -o hello.tar.gz $official_package_location
echo "Installed the tarball from official source"

tar -xvzf hello.tar.gz
echo "Tarball extracted successfull"

if [ ! -d $general_installation_directory ]; then
  echo "Creating the $general_installation_directory directory for installation"
  mkdir $general_installation_directory
fi

echo "Moving application to the desired local machine location"
mv ./Postman/app $postman_installation_directory

echo "Removing leftovers from installation"
rm -rf ./Postman
rm -rf ./hello.tar.gz

echo "Creating the bin file and filling it with necessary data"
if [ ! -d $HOME/.local/bin/ ]; then
  echo "$HOME/.local/bin not found, creating it for you"
  mkdir $HOME/.local/bin/
fi
touch $HOME/.local/bin/postman
chmod u+x $HOME/.local/bin/postman
echo "#!/bin/bash
$postman_installation_directory/Postman" >> $HOME/.local/bin/postman

echo "Creating the desktop file for your DE to recognize"
touch $HOME/.local/share/applications/postman.desktop
echo "
[Desktop Entry]
Name=Postman
Keywords=API;http;json;web;
Exec=postman
Icon=$HOME/$literal_name_of_installation_directory/postman/icons/icon_128x128.png
Terminal=false
Type=Application
Categories=API;json;
" >> $HOME/.local/share/applications/postman.desktop

echo "Done and done"
sleep 2
echo "Happy Hacking!"
sleep 2
