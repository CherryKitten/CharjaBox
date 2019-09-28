# CharjaBox

Ansible based Homeserver setup using Docker.

Inspired by [Ansible NAS](https://github.com/davestephens/ansible-nas) and [HomelabOS](https://gitlab.com/NickBusey/HomelabOS)

## Features

* Samba Sharing
* Manual container management using Portainer

### Applications

* [Portainer](https://portainer.io/) - Web Interface for managing Docker containers

## Installation

WORK IN PROGRESS

1. Set up Ansible
2. Copy/Merge settings.template/ to settings/
3. Change all the settings you want to change
4. ansible-galaxy install -r requirements.yml
5. run playbook