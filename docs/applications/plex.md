# General
[Plex](https://www.plex.tv/) - Your very own personal streaming service

You can set the paths to your media folders in the variables `plex_music_directory`, `plex_tv_directory`, and `plex_movies_directory`. 

To automatically add your server to your account, generate a claim token [here](https://www.plex.tv/claim/) and insert that token into the `plex_token` variable. Please note that the claim token expires after 5 minutes, so generate it right before running the playbook.

After the server is set up you can visit the Plex webinterface via [the official Plex website](https://app.plex.tv/desktop) or port `32400` on your server. Changing the port for Plex can lead to some difficulties with the apps, so it is not encouraged to do that.

Once you are on the webinterface, you can do your first time setup and let Plex scan through your media files.

# Variables

| Variable              | Type    | Default                            | Comment                                          |
|-----------------------|---------|------------------------------------|--------------------------------------------------|
| plex_enabled          | Boolean | false                              | Enable/Disable the application                   |
| plex_config_directory | String  | "{{ docker_home }}/plex/config"    | Path were application config should be stored    |
| plex_music_directory  | String  | "{{ charjabox_music_directory }}"  | Path were music is stored                        |
| plex_tv_directory     | String  | "{{ charjabox_tv_directory }}"     | Path were TV shows are stored                    |
| plex_movies_directory | String  | "{{ charjabox_movies_directory }}" | Path were movies are stored                      |
| plex_token            | String  | ""                                 | Plex claim token                                 |
| plex_traefik_enabled  | Boolean | false                              | Enable/Disable access to application via Traefik |
| plex_domain           | String  | "plex.{{ charjabox_domain }}"      | Domain used to access the application            |
| plex_web_port         | Int     | 32400                              | Port used to access the application              |
