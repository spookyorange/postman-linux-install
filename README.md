# Install tarball version of Postman with just a basic script!

A script to easily install Postman the tarball way on your Linux machine!

Learn how I scriptified it @ [my relevant Medium article](https://medium.com/@spookyorange/scriptifying-stuff-installation-for-tarball-of-postman-on-linux-cab04ce89804)

Note: This installation script is by no means affiliated with Postman project, or its maintainers.

## Usage

Clone the repo and run the script
```bash

git clone https://github.com/spookyorange/postman-linux-install.git
cd postman-linux-install
sh ./install.sh

```

To remove the application(if it has been installed with this method)
```bash

sh ./uninstall.sh

```

Updates are handled by running the install script again, you can just run the install script and all good!

```bash

sh ./install.sh

```


## Details

The script will install the application in the following destinations if you have installed locally:

- ~/.tarball-installations/postman
- ~/.local/bin/postman
- ~/.local/share/applications/postman.desktop

## Tested Distros

- Fedora by Spookyorange
- SteamOS(Steam Deck) by Spookyorange

## Contributing

If you have a distro that you would like to add to the list of tested distros, please submit a pull request with the changes you made to the script and the distro you tested it on.
