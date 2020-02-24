#!/bin/bash
#add fix to exercise4-server2 here

sudo sed -i '3 a\192.168.100.10 server1' /etc/hosts

### script for ex 5
sudo chmod 777 /home/vagrant/.ssh/id_rsa