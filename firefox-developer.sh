#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres
## see <https://github.com/atorresbr>

#função usada para enviar mensagem caso o usuário nao esteja usando o comando sudo
#this functio send the error mesage to user if his not use the sudo command

if [ "$(whoami)" != "root" ]
then
echo
  echo -e " 🔴 use sudo para usar este script\n 🔴 use sudo berfore run this script"
echo
  exit 1
fi

echo
echo

RED='\033[0;31m'
NC='\033[0m' # No Color

# executando comandos

# Excluindo arquivos do firefox DEv da pasta opt
echo  -e " 🐧 Excluindo arquivos legados do FIREFOX DEv no diretorio opt"
echo
sleep 1
echo  -e " 🔴 ${RED}sudo rm -Rf /opt/firefox-developer* "
echo

sleep 1

 echo -ne ' #####                   (33%)\r'
sleep 1
 echo -ne ' #############           (66%)\r'
sleep 1
 echo -ne ' ####################### (100%)\r '
 echo -ne ' \n'${NC}

sleep 2

echo
echo -e " Êxito !"
echo

sleep 2
sudo rm -Rf /opt/firefox-developer* && \

echo

#fim

# Exclui os arquivos do firefov DEv da pasta bin
echo " 🐧 Excluindo arquivos legados do FIREFOX DEv no diretório bin "
echo
sleep 1
echo  -e " 🔴 ${RED}sudo rm -Rf /usr/bin/firefox-developer "
echo

sleep 1

 echo -ne ' #####                   (33%)\r'
sleep 1
 echo -ne ' #############           (66%)\r'
sleep 1
 echo -ne ' ####################### (100%)\r '
 echo -ne ' \n'${NC}

sleep 2

echo
echo -e " Êxito !"
echo

sleep 2
sudo rm -Rf /usr/bin/firefox-developer && \

echo

#fim 

# Exclui o icone do Firefox DEv da seção de snaps
echo " 🐧 Excluindo icone de atalho do firefox-dev na seção de Snaps "
echo
sleep 1
echo  -e " 🔴 ${RED}sudo rm -Rf /usr/share/applications/firefox-developer.desktop "
echo

sleep 1

 echo -ne ' #####                   (33%)\r'
sleep 1
 echo -ne ' #############           (66%)\r'
sleep 1
 echo -ne ' ####################### (100%)\r '
 echo -ne ' \n'${NC}

sleep 2

echo
echo -e " Êxito !"
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
echo " 🐧 Criando novo icone de atalho do firefox-dev na seção de Snaps"
echo

sleep 2
 echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# printando a mensagem de agradecimento no terminal
sleep 2

echo -e " 🐧 obrigado por usar este script. Compartilhe !\n 🐧 thanks for use this script. Share ! " 

echo


#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done
