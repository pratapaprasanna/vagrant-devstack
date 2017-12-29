!/usr/bin/env bash

# Install base tools
sudo apt-get update
sudo apt-get install -y git wget python-pip python-dev

# Download Pike stable devstack
git clone https://github.com/openstack-dev/devstack.git
cd devstack
git checkout stable/pike
wget https://hastebin.com/raw/oguzezadel
mv oguzezadel local.conf

#Do Unstacking (No need to do it if you are doing for the first time.)
./unstack.sh

#Do Clean (No need to do it if you are doing for the first time.)
./clean.sh 

# Do the stacking
./stack.sh
