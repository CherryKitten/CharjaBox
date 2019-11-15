# CharjaBox

<img src='img/mascot.png' alt='CharjaBox mascot' width="100"/>

Work in progress Ansible based Homeserver setup using Docker.

Inspired by [Ansible NAS](https://github.com/davestephens/ansible-nas) and [HomelabOS](https://gitlab.com/NickBusey/HomelabOS)

**What is this?**

CharjaBox is an Ansible playbook that can be used to easily deploy your Homeserver setup.

All supported applications can be installed on your server using Docker by simply changing some variables and running the playbook.

**Features**

* Samba Sharing
* Manual container management using Portainer
* Home Media Streaming with Plex or Jellyfin
* Media management with Sonarr, Radarr and Lidarr
* Your own wiki using Dokuwiki
* macOS backups over the network with Timemachine over SMB
* Personal Finance management with Firefly III
* Local DNS management with BIND
* Hosting your own git repositories
* Download caching for many CDNs
* and more..