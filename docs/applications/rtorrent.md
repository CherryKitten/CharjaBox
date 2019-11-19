# r(u)Torrent
* [rtorrent](https://github.com/rakshasa/rtorrent) - Text-based ncurses BitTorrent client
* [ruTorrent](https://github.com/Novik/ruTorrent) - Web front-end for the popular Bittorrent client rtorrent

Settings for rtorrent can be changed in `rtorrent_config_directory/rtorrent/rtorrent.rc`. 

"Settings, changed by the user through the "Settings" panel in ruTorrent, are valid until rtorrent restart. After which all settings will be set according to the rtorrent config file (/config/rtorrent/rtorrent.rc),this is a limitation of the actual apps themselves."

To set a password for rutorrent add the auth configuration to `rtorrent_config_directory/nginx/nginx.conf`, see [here](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/) for more information.
