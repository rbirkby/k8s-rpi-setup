# Kubernetes Ansible playbook for Raspbian Stretch on Raspberry Pis




## Pre-requisites

* Ansible v2.3 on the controller (I used Ubuntu 16.04 on Windows - WSL). This is not available in the 16.04 apt repos so must be installed separately
* Raspbian Stretch installed on all Raspberry Pis (Note: you need an ARMv7 architecture - so Raspberry Pi Zeros are not supported)
* ssh needs to be available on Raspbian (create a blank ssh file in the root directory of the SD card).
* The Raspberry Pis need a network connection. If you are using WiFi, make sure your /etc/wpa_supplicant/wpa_supplicant.conf file is correct. The Raspbian Stretch syntax is different to the Jessie syntax commonly shared. 

Prepare by copying your public SSH key to each server/node to allow ansible to connect:

```bash
$ ssh-keygen
$ ssh-copy-id pi@node-ip-address
```

## Usage

Add all your hosts to the host inventory file. You should have a single master and multiple worker nodes. Then run the ansible playbook: 

```bash 
$ ansible-playbook cluster.yml -i host
```

## Roadmap

- [ ] Access to the dashboard remotely
- [ ] Separate into ansible roles
- [ ] Worker nodes
- [ ] service mesh
- [ ] Install the dashboard using kubectl from the ansible controller, not the ansible target
