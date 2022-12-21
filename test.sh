#!/bin/bash
sudo apt-get update
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc   
nvm install node  
sudo apt install npm -y
npm cache clean -f 
sudo npm install -g n
sudo n latest 
sudo npm -g install create-react-app
sudo create-react-app test
sudo mv test /home/ubuntu
cd /home/ubuntu/test
sudo npm start