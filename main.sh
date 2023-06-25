#!/bin/bash
#OS Assignment 01

clear

setIP(){
ip addr show
sudo gedit /etc/network/interfaces  #edit dns maskgateway and ip here, (ipconfig functionality)
sudo netplan try                    #configure IP
sudo netplan apply 
ip a  #check if ip has changed or not
}

#call the function here
setIP
