# CharjaBox
![GitHub](https://img.shields.io/github/license/CherryKitten/CharjaBox)
[![Build Status](https://travis-ci.com/CherryKitten/CharjaBox.svg?branch=master)](https://travis-ci.com/CherryKitten/CharjaBox)

<img src='docs/img/mascot.png' alt='CharjaBox mascot' width="100"/>

Work in progress Ansible based Homeserver setup using Docker.

Inspired by [Ansible NAS](https://github.com/davestephens/ansible-nas) and [HomelabOS](https://gitlab.com/NickBusey/HomelabOS)

## What is this?

In the future this maybe could be a simple solution to quickly deploy a homeserver using Ansible and Docker.
At the moment it can share files via SMB and create a Portainer container for managing Docker containers. But this is only the beginning.
I will add more information, ~~documentation~~ and features soon

Read the documentation [here](https://cherrykitten.github.io/CharjaBox).

## Features

* Samba Sharing
* Manual container management using Portainer
* Home Media Streaming with Plex or Jellyfin
* Personal Finance management with Firefly III
* Local DNS management with BIND
* Download caching for many CDNs

### Applications

* [BIND](https://www.isc.org/bind/) - Domain Name Server for your home network
* [Firefly III](https://firefly-iii.org/) - Free and open source personal finance manager
* [Heimdall](https://heimdall.site/) - Application Dashboard for easy access to all your services
* [Jellyfin](http://jellyfin.org/) - The Free Software Media System
* [Lancache](https://github.com/lancachenet/monolithic) - Cache your video game downloads and operating system updates so you only have to download them once
* [Nginx](https://www.nginx.com/) - Open source web server and a reverse proxy server
* [Plex](https://www.plex.tv/) - Your very own personal streaming service
* [Portainer](https://portainer.io/) - Web Interface for managing Docker containers

## Installation

1. Make sure all [Requirements](https://cherrykitten.github.io/CharjaBox/#requirements/) are met
2. Clone the repository and `cd` into the directory
3. Copy `settings.template` to `settings` and [configure](https://cherrykitten.github.io/CharjaBox/#configuration/) everything
4. Create an `inventory` file and add your server's IP/Hostname/Domain
4. Install needed roles: `ansible-galaxy install -r requirements.yml`
5. Run the playbook: `ansible-playbook -i inventory -u $USER charjabox.yml`

## Special Thanks

* Thanks to [DysphoricUnicorn](https://github.com/DysphoricUnicorn) for designing our beautiful mascot.
