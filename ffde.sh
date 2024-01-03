#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres
## see <https://github.com/atorresbr>

#função usada para enviar mensagem caso o usuário nao esteja usando o comando sudo
#this functio send the error mesage to user if his not use the sudo command
function root {

if [ "$(whoami)" != "root" ]
then
  echo " use sudo para usar este script | use sudo berfore run this script "
  exit 1
fi

}

echo
echo

# executando comandos

# Exclui os arquivos do firefox DEv da pasta opt
echo " 🐧 excluindo arquivos legados do diretorio opt \n sudo rm -Rf /opt/firefox-developer* && \ "
echo

sleep 2
sudo rm -Rf /opt/firefox-developer* && \

echo

#fim

# Exclui os arquivos do firefov DEv da pasta bin
echo " 🐧 excluindo arquivos legados do diretório bin "
echo

 
sleep 2
sudo rm -Rf /usr/bin/firefox-developer && \

echo

#fim 

# Exclui o icone do Firefox DEv da seção de snaps
echo " 🐧 excluindo o icone da seção de Snaps (( snApps )) "
echo


sleep 2
sudo rm -Rf /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# Exclui o diretório antigo com arquivos de uma instalação anterior
echo " 🐧 excluindo diretório antigo com arquivos de uma instalação anterior"
echo

 
sleep 2
sudo rm -Rf ffde* && \

echo
#fim


# criando uma outra pasta com o atual Firefox DEv
echo " 🐧 criando diretório para receber o donwload do Firefox DEv"
echo

 
sleep 2
mkdir ffde && cd ffde && \

echo
#fim

# fazendo o Donload
echo " 🐧 Fazendo o download do Firefox DEv"
echo


sleep 2
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O ffde.bz2 && \

echo
#fim

# Extraindo os arquivos
echo " 🐧 Extraindo os arquivos do encapsulamento"
echo

 
sleep 2
sudo tar -jxvf  ffde.bz2 -C /opt/ && \

echo
#fim

# renomeando a pasta dos arquivos de firefox para firefox-dev
echo " 🐧 renomeando o diretório dos arquivos de firefox para firefox-dev"
echo


sleep 2
sudo mv /opt/firefox*/ /opt/firefox-developer && \

echo
#fim

# Criando atalho do firefox-dev no diretório do usuário  
echo " 🐧 Criando atalho do firefox-dev no diretório do usuário "
echo

sleep 2
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer && \

echo
#fim

# Criando novo icone de atalho do firefox-dev na seção de Snaps (( snApps )) 
echo " 🐧 Criando novo icone de atalho do firefox-dev na seção de Snaps (( snApps ))  "
echo

sleep 2
 echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# printando a mensagem de agradecimento no terminal
sleep 2

echo " thanks for use this script | obrigado por usar este script !. Compartilhe " 

clear
echo " 🐧 thanks for use this script | obrigado por usar este script !. Compartilhe " 

echo


#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done
