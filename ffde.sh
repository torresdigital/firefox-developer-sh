#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres
## see <https://github.com/atorresbr>

if [ "$(whoami)" != "root" ]
then
  echo " use sudo para usar este script | use sudo berfore run this script "
  exit 1
fi

sudo rm -Rf /opt/firefox-developer* && \
sudo rm -Rf /usr/bin/firefox-developer && \
sudo rm -Rf /usr/share/applications/firefox-developer.desktop && \
sudo rm -Rf /ffde* && \
mkdir ffde && cd ffde && \
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O ffde.bz2 && \
sudo tar -jxvf  ffde.bz2 -C /opt/ && \
sudo mv /opt/firefox*/ /opt/firefox-developer && \
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer && \
echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop && \
echo " thanks for use this script | obrigado por usar este script !. Compartilhe " 
  exit 1
fi


#
#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done
