#!/bin/bash
#21i0390
#VANEEZA AHMAD
#SECTION A 
#OS Assignment 01

clear
printName(){
 echo 21I-0390-VANEEZA
}

createUser(){
  sudo adduser OS_Assignment_1 --force-badname #switch used to make the script wait long enough to enter credentials of New User
}

giveAdminRights(){
sudo usermod -aG sudo OS_Assignment_1  
}

checkRights(){
groups OS_Assignment_1  #to check if admin rights have been granted
}

switchUser(){
sudo su OS_Assignment_1

}

listInstalledSoftwares(){
#runuser -l OS_Assignment_1 -c 'sudo apt list --installed'
sudo apt list --installed
}

installDropBox(){
sudo apt install nautilus-dropbox
}

checkDropbox(){
dropbox --version  #also diplays help of all commands

}

setIP(){
ip addr show
sudo gedit /etc/network/interfaces  #edit dns maskgateway and ip here, (ipconfig functionality)
sudo netplan try                    #configure IP
sudo netplan apply 
ip a  #check if ip has changed or not
}



printName
createUser
giveAdminRights
checkRights
switchUser
wait
listInstalledSoftwares
wait
installDropBox
wait
setIP
help

