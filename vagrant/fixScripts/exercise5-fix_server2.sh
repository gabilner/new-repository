#!/bin/bash
#add fix to exercise5-server2 here

### script 4 again - vagrant probles :(
sudo sed -i '3 a\192.168.100.10 server1' /etc/hosts
### script 5
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
sudo apt-get install sshpass
ssh-keygen -P "" -f /home/vagrant/.ssh/id_rsa
sudo chmod 777 /home/vagrant/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@server1
