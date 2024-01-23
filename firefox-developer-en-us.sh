#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres <https://www.facebook.com/profile.php?id=100007143210386>
## see <https://github.com/atorresbr>



#this functio send the error mesage to user if his not use the sudo command
if [ "$(whoami)" != "root" ]
then
  echo
    echo -e " 🔴 use sudo to run this script "
  echo
  exit 1
fi

echo
echo

on_yellow='\033[43m'  # Yellow
on_green='\033[42m'   # Green
b_black='\033[1;30m'  # black
b_green='\033[1;32m'  # Bold Green
green='\033[0;32m'    # Light Green
red='\033[0;31m'      # Red
nc='\033[0m'          # No Color


#================================================== * 
# =        Executando os Comandos de Shell           *
#================================================== *

# Excluindo arquivos do firefox DEv da pasta opt
echo  -e " 🐧 Deleting legacy Firefox achives on opt diretory"
echo
sleep 1
echo  -e " 🔴${b_green} sudo rm -Rf /opt/firefox-developer* " ${nc} 
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (66%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo -e " Succes !"
echo

sleep 2
sudo rm -Rf /opt/firefox-developer* && \

echo
#fim

# Exclui os arquivos do firefov DEv da pasta bin
echo " 🐧 Deleting the legacy achives on bin directory "
echo
sleep 1
echo  -e " 🔴 ${b_green}sudo rm -Rf /usr/bin/firefox-developer "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (66%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo -e " Succes !"
echo

sleep 2
sudo rm -Rf /usr/bin/firefox-developer && \

echo
#fim 

# Exclui o icone do Firefox DEv da seção de snaps (( snApps ))
echo " 🐧 Deleting the firefox-dev icon on Snaps section "
echo
sleep 1
echo  -e " 🔴 ${b_green}sudo rm -Rf /usr/share/applications/firefox-developer.desktop "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (66%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo -e " Succes !"
echo

sleep 2
sudo rm -Rf /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# Exclui o diretório antigo com arquivos de uma instalação anterior
echo " 🐧 Deleting old directory with files from a previous installation "
echo
sleep 1
echo -e " 🔴 ${b_green}sudo rm -Rf installer-firefox-developer* "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (50%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo -e " Succes !"
echo
 
sleep 2
sudo rm -Rf installer-firefox-developer* && \

echo
#fim


# criando uma outra pasta com o atual Firefox DEv
echo " 🐧 Creating directory to receive Firefox DEv download "
echo
sleep 1
echo -e " 🔴 ${b_green}mkdir installer-firefox-developer && cd installer-firefox-developer "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (50%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2
 
echo
echo -e " Succes !"
echo


sleep 2
mkdir installer-firefox-developer && cd installer-firefox-developer && \

echo
#fim

# fStarting the Firefox Dev achives download
echo " 🐧 Starting the Firefox Dev achives download"
echo
sleep 1
echo -e " 🔴 ${b_green} https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US ${nc} -O firefox-dev.bz2 " 
echo 


sleep 2
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O firefox-dev.bz2 && \

echo
echo -e " Succes !"
echo

sleep 1
echo -ne ${b_green}'👾     (10%%)\r '
sleep 1
echo -ne '👾 👾     20%)\r '
sleep 1
echo -ne '👾 👾 👾     (30%)\r '
sleep 1
echo -ne '👾 👾 👾 👾     (40%)\r '
sleep 1
echo -ne '👾 👾 👾 👾 👾     (50%)\r '
sleep 1
echo -ne '👾 👾 👾 👾 👾 👾 👾     (60%)\r '
sleep 1
echo -ne '👾 👾 👾 👾 👾 👾 👾 👾     (70%)\r '
sleep 1
echo -ne '👾 👾 👾 👾 👾 👾 👾 👾 👾     (80%)\r '
sleep 1
echo -ne '👾 👾 👾 👾 👾 👾 👾 👾 👾 👾     (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
#fim

# Extracting the files from the encapsulation
echo " 🐧 Extracting the files from the encapsulation"
echo
sleep 1
echo -e " 🔴 ${b_green} sudo tar -jxvf  firefox-dev.bz2 -C /opt/ " ${nc}
echo
 
sleep 2
sudo tar -jxvf  firefox-dev.bz2 -C /opt/ && \
sleep 1

echo
echo -e " Succes !"
echo

echo
#fim

# Renaming the firefox archives directory to firefox-developer
echo " 🐧 Renaming the firefox archives directory to firefox-developer"
echo
sleep 1
echo -e " 🔴 ${b_green} sudo mv /opt/firefox*/ /opt/firefox-developer "
echo 

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (50%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2
 
echo
echo -e " Succes !"
echo



sleep 2
sudo mv /opt/firefox*/ /opt/firefox-developer && \



echo
#end

# Creating the shortcut to run Firefox Dev
echo " 🐧 Creating the shortcut to run Firefox Dev"
echo
sleep 1
echo -e " 🔴  ${b_green} sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (50%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2
 
echo
echo -e " Succes !"
echo

sleep 2
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer && \

echo
#fim

# Creating the icon shortcut to run Firefox Dev on snApps section (( snApps )) 
echo " 🐧 Creating the shortcut icon to run Firefox Dev on Snaps (( snApps )) user section"
echo

sleep 2
 echo -e  ${b_green} '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop && \


echo
echo -e " ${nc}Succes !"
echo
#fim

# This command excludes the directory installation
echo " 🐧 Excluding the installation directory"
echo
sleep 1
echo -e " 🔴 ${b_green} cd .. && sudo rm -Rf installer-firefox-developer* "
echo

sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (33%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (50%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo -e " Succes !"
echo
 
sleep 2

cd ..
sudo rm -Rf installer-firefox-developer* && \
cd ..
sudo rm -Rf firefox-developer-sh* && \
cd ..

ls 

echo
#fim

# printing the thanks mensage on the user terminal 
sleep 2

echo
echo -e " 🙌  Thanks to use this script. \n To run te Firefox Dev, just go to snApp's section and click on the Firefox Dev Icon" 
echo
sleep 1
echo -e " 😘 Share ❗, this script" && \

echo -ne '\n'

echo
echo

#Options to Developers

#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done

###################################
#       choose you collor         #
###################################

# Reset / no collor 
#Color_Off='\033[0m'       # Text Reset

# Regular Colors
#Black='\033[0;30m'        # Black
#Red='\033[0;31m'          # Red
#Green='\033[0;32m'        # Green
#Yellow='\033[0;33m'       # Yellow
#Blue='\033[0;34m'         # Blue
#Purple='\033[0;35m'       # Purple
#Cyan='\033[0;36m'         # Cyan
#White='\033[0;37m'        # White

# Bold
#BBlack='\033[1;30m'       # Black
#BRed='\033[1;31m'         # Red
#BGreen='\033[1;32m'       # Green
#BYellow='\033[1;33m'      # Yellow
#BBlue='\033[1;34m'        # Blue
#BPurple='\033[1;35m'      # Purple
#BCyan='\033[1;36m'        # Cyan
#BWhite='\033[1;37m'       # White

# Underline
#UBlack='\033[4;30m'       # Black
#URed='\033[4;31m'         # Red
#UGreen='\033[4;32m'       # Green
#UYellow='\033[4;33m'      # Yellow
#UBlue='\033[4;34m'        # Blue
#UPurple='\033[4;35m'      # Purple
#UCyan='\033[4;36m'        # Cyan
#UWhite='\033[4;37m'       # White

# Background
#On_Black='\033[40m'       # Black
#On_Red='\033[41m'         # Red
#On_Green='\033[42m'       # Green
#On_Yellow='\033[43m'      # Yellow
#On_Blue='\033[44m'        # Blue
#On_Purple='\033[45m'      # Purple
#On_Cyan='\033[46m'        # Cyan
#On_White='\033[47m'       # White

# High Intensity
#IBlack='\033[0;90m'       # Black
#IRed='\033[0;91m'         # Red
#IGreen='\033[0;92m'       # Green
#IYellow='\033[0;93m'      # Yellow
#IBlue='\033[0;94m'        # Blue
#IPurple='\033[0;95m'      # Purple
#ICyan='\033[0;96m'        # Cyan
#IWhite='\033[0;97m'       # White

# Bold High Intensity
#BIBlack='\033[1;90m'      # Black
#BIRed='\033[1;91m'        # Red
#BIGreen='\033[1;92m'      # Green
#BIYellow='\033[1;93m'     # Yellow
#BIBlue='\