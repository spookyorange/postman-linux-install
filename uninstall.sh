#!/bin/bash

echo "Removing the installation from your home"
rm -rf $HOME/.tarball-installations/postman
rm $HOME/.local/bin/postman
rm $HOME/.local/share/applications/postman.desktop
echo "Uninstallation is successfull"
sleep 1
echo "Happy Hacking!"
sleep 1
