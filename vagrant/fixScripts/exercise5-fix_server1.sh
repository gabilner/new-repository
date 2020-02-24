#!/bin/bash
#add fix to exercise5-server1 here

sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
sudo apt-get install sshpass
ssh-keygen -P "" -f /home/vagrant/.ssh/id_rsa
sudo chmod 777 /home/vagrant/.ssh/id_rsa
sleep 300&& sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@server2 &

