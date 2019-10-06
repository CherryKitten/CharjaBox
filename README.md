# CharjaBox

<img src='docs/img/mascot.png' alt='CharjaBox mascot' width="100"/>

Work in progress Ansible based Homeserver setup using Docker.

Inspired by [Ansible NAS](https://github.com/davestephens/ansible-nas) and [HomelabOS](https://gitlab.com/NickBusey/HomelabOS)

## What is this?

In the future this maybe could be a simple solution to quickly deploy a homeserver using Ansible and Docker.
At the moment it can share files via SMB and create a Portainer container for managing Docker containers. But this is only the beginning.
I will add more information, documentation and features soon

## Features

* Samba Sharing
* Manual container management using Portainer

### Applications

* [Plex](https://www.plex.tv/) - Your very own personal streaming service
* [Portainer](https://portainer.io/) - Web Interface for managing Docker containers

## Installation

WORK IN PROGRESS

1. Set up Ansible
2. Copy/Merge settings.template/ to settings/
3. Change all the settings you want to change
4. ansible-galaxy install -r requirements.yml
5. run playbook

## Special Thanks

* Thanks to [DysphoricUnicorn](https://github.com/DysphoricUnicorn) for designing our beautiful mascot.

