#!/bin/bash -ex

sudo apt-get install apt-cacher-ng

# For now, don't cache https repositories and transparently proxy upstream
sudo sh -c "echo 'PassThroughPattern: .*' >> /etc/apt-cacher-ng/acng.conf"

sudo /etc/init.d/apt-cacher-ng start

echo 'If this is run in WSL on Windows, you will need to manually open a firewall port (3142/tcp)'
