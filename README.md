# CharjaBox
![GitHub](https://img.shields.io/github/license/CherryKitten/CharjaBox)
[![Build Status](https://travis-ci.com/CherryKitten/CharjaBox.svg?branch=master)](https://travis-ci.com/CherryKitten/CharjaBox)

<img src='docs/img/mascot.png' alt='CharjaBox mascot' width="100"/>

Ansible based Homeserver setup using Docker.

Inspired by [Ansible NAS](https://github.com/davestephens/ansible-nas) and [HomelabOS](https://gitlab.com/NickBusey/HomelabOS)

## What is this?

CharjaBox is an Ansible playbook that can be used to easily deploy your Homeserver setup.

All supported applications can be installed on your server using Docker by simply changing some variables and running the playbook.

Read the documentation [here](https://cherrykitten.github.io/CharjaBox).

## Features

* Samba Sharing
* Manual container management using Portainer
* Home Media Streaming with Plex, Jellyfin and/or Airsonic
* Media management with Sonarr, Radarr and Lidarr
* Torrenting via r(u)Torrent
* Your own wiki using Dokuwiki
* RSS Feed Reader
* macOS backups over the network with Time machine over SMB
* Personal Finance management with Firefly III
* Local DNS management with BIND
* Hosting your own git repositories
* Download caching for many CDNs
* Password management
* and more...

### Applications

* [Airsonic](https://airsonic.github.io/) - Free, web-based media streamer, providing ubiquitous access to your music
* [Bazarr](https://github.com/morpheus65535/bazarr) - Companion application to Sonarr and Radarr for downloading subtitles
* [BIND](https://www.isc.org/bind/) - Domain Name Server for your home network
* [Bitwarden_rs](https://github.com/dani-garcia/bitwarden_rs) - Password manager compatible with [Bitwarden apps](https://bitwarden.com/)
* [Calibre-Web](https://github.com/janeczku/calibre-web) - Web app for browsing, reading and downloading eBooks stored in a Calibre database 
* [Dokuwiki](https://www.dokuwiki.org/dokuwiki) - Simple to use and highly versatile Open Source wiki software that doesn't require a database
* [Duplicati](https://www.duplicati.com/) - Free backup software to store encrypted backups online
* [Firefly III](https://firefly-iii.org/) - Free and open source personal finance manager
* [Gitea](https://gitea.io/) - Git with a cup of tea
* [Heimdall](https://heimdall.site/) - Application Dashboard for easy access to all your services
* [Home-Assistant](https://www.home-assistant.io/hassio/) - Open source home automation that puts local control and privacy first. 
* [Jackett](https://github.com/Jackett/Jackett) - API Support for your favorite torrent trackers.
* [Jellyfin](http://jellyfin.org/) - The Free Software Media System
* [Lancache](https://github.com/lancachenet/monolithic) - Cache your video game downloads and operating system updates so you only have to download them once
* [Lidarr](https://lidarr.audio/) - Manage your music collection
* [Miniflux](https://miniflux.app/) - Minimalist and opinionated feed reader
* [Nextcloud](https://nextcloud.com/) - Selfhosted cloud file hosting & sharing
* [Nginx](https://www.nginx.com/) - Open source web server and a reverse proxy server
* [Plex](https://www.plex.tv/) - Your very own personal streaming service
* [Portainer](https://portainer.io/) - Web Interface for managing Docker containers
* [pyLoad](https://pyload.net/) - Free and open-source Download Manager written in Python
* [Radarr](https://radarr.video/#home) - Manage your movie collection
* [rtorrent](https://github.com/rakshasa/rtorrent) - Text-based ncurses BitTorrent client
* [ruTorrent](https://github.com/Novik/ruTorrent) - Web front-end for the popular Bittorrent client rtorrent
* [Sonarr](https://sonarr.tv/) - Manage your TV collection
* [Tautulli](https://tautulli.com/) - Monitor your Plex Media Server
* [Time machine](https://github.com/awlx/samba-timemachine) - Backup your macOS devices over the network
* [Traefik](https://containo.us/traefik/) - Automate reverse proxy access to your server


## Installation

1. Make sure all [Requirements](https://cherrykitten.github.io/CharjaBox/#requirements/) are met
2. Clone the repository and `cd` into the directory
3. [Configure](https://cherrykitten.github.io/CharjaBox/#configuration/) everything
4. Create an `inventory` file and add your server's IP/Hostname/Domain
5. Install needed roles: `ansible-galaxy install -r requirements.yml`
6. Run the playbook: `ansible-playbook -i inventory -u $USER charjabox.yml`

You can use the playbook `charjabox/scripts/initialize.yml` to skip part of steps 3 and 4. This playbook asks you about your server IP, group name and settings folder and creates the files for you automatically.

You still need to do it manually if you want to use multiple servers for now. This functionality will be added to the script in the future.

## Special Thanks

* Thanks to [DysphoricUnicorn](https://github.com/DysphoricUnicorn) for designing our beautiful mascot.
