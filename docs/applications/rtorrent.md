# General
* [rtorrent](https://github.com/rakshasa/rtorrent) - Text-based ncurses BitTorrent client
* [ruTorrent](https://github.com/Novik/ruTorrent) - Web front-end for the popular Bittorrent client rtorrent

Settings for rtorrent can be changed in `rtorrent_config_directory/rtorrent/rtorrent.rc`. 

"Settings, changed by the user through the "Settings" panel in ruTorrent, are valid until rtorrent restart. After which all settings will be set according to the rtorrent config file (/config/rtorrent/rtorrent.rc),this is a limitation of the actual apps themselves."

To set a password for rutorrent add the auth configuration to `rtorrent_config_directory/nginx/nginx.conf`, see [here](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/) for more information.

# Variables

| Variable                    | Type    | Default                               | Comment                                          |
|-----------------------------|---------|---------------------------------------|--------------------------------------------------|
| rtorrent_enabled            | Boolean | false                                 | Enable/Disable the application                   |
| rtorrent_config_directory   | String  | "{{ docker_home }}/rtorrent/config"   | Path were application config should be stored    |
| rtorrent_download_directory | String  | "{{ charjabox_downloads_directory }}" | Path were downloads should be stored             |
| rtorrent_traefik_enabled    | Boolean | false                                 | Enable/Disable access to application via Traefik |
| rtorrent_domain             | String  | "rtorrent.{{ charjabox_domain }}"     | Domain used to access the application            |
| rtorrent_http_port          | Int     | 7991                                  | Port used to access the application via HTTP     |
| rtorrent_https_port         | Int     | 7992                                  | Port used to access the application via HTTPS    |
| rtorrent_scgi_port          | Int     | 5000                                  | Port used for scgi socket                        |
| rtorrent_bittorrent_port    | Int     | 51413                                 | Port used for torrent protocols                  |
| rtorrent_bittorrent_port2   | Int     | 6881                                  | Port used for torrent protocols                  |
