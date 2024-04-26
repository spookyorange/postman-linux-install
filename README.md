# Install tarball version of Postman with just a basic script!

A script to easily install Postman the tarball way on your Linux machine!

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

## Details

The script will install the application in the following destinations if you have installed locally:

- ~/.tarball-installations/postman
- ~/.local/bin/postman
- ~/.local/share/applications/postman.desktop

## Tested Distros

- Fedora by Spookyorange

## Contributing

If you have a distro that you would like to add to the list of tested distros, please submit a pull request with the changes you made to the script and the distro you tested it on.
