## Make Node.js service

sudo npm install forever -g
sudo npm install forever-service -g
sudo forever-service install osc-node

## Install OSC-Node

npm install

## write out current crontab

sudo crontab -l > mycron

## echo new cron into cron file

sudo echo "@reboot sudo mount /dev/sda1 /mnt/usb && sudo service osc-node start" >> mycron

## install new cron file

sudo crontab mycron
sudo rm mycron

## Finish

sudo reboot
