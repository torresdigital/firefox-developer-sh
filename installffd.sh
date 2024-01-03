#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres
## see <https://github.com/atorresbr>

if [ "$(whoami)" != "root" ]
then
  echo "use sudo berfore run this script | use sudo para usar este script"
  exit 1
fi

sudo rm -Rf /opt/firefox-developer* &&
sudo rm -Rf /usr/bin/firefox-developer &&
sudo rm -Rf /usr/share/applications/firefox-developer.desktop &&
mkdir firefoxdev && cd firefoxdev &&
wget https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US&_gl=1*rbhibh*_ga*MzU5MjcxOTMxLjE3MDIzMTIzNjA.*_ga_MQ7767QQQW*MTcwNDI0ODA2Mi40LjEuMTcwNDI0OTQ3OC4wLjAuMA..









#
#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done
