# Install tarball version of Postman with just a basic script!

A script to easily install Postman on your Linux machine, local user installation or global installation, your call!

## Usage

### For local installation

Clone the repo and run the script
```bash

git clone git@github.com:spookyorange/postman-linux-install.git
cd postman-linux-install
./install.sh

```

To remove the application(if it has been installed with this method)
```bash

./uninstall.sh

```

### For global installation

Clone the repo, change branch and run the script
```bash

git clone git@github.com:spookyorange/postman-linux-install.git
cd postman-linux-install
git checkout global
./install.sh

```

To remove the application(if it has been installed with this method), note: please make sure you are on the global branch
```bash

git checkout global
./uninstall.sh

```

## Details

The script will install the application in the following destinations if you have installed locally:

- ~/.tarball-installations/postman
- ~/.local/bin/postman
- ~/.local/share/applications/postman.desktop

If globally:

- ~/opt/postman
- ~/usr/bin/postman
- ~/usr/share/applications/postman.desktop


## Tested Distros

- Fedora by Spookyorange

## Contributing

If you have a distro that you would like to add to the list of tested distros, please submit a pull request with the changes you made to the script and the distro you tested it on.
