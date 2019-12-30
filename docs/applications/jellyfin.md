# General
[Jellyfin](http://jellyfin.org/) - The Free Software Media System

For information on how to best name your media files so they get recognized correctly, see the [jellyfin documentation](https://jellyfin.org/docs/general/server/media/movies.html).

# Variables

| Variable                    | Type    | Default                             | Comment                                          |
|-----------------------------|---------|-------------------------------------|--------------------------------------------------|
| jellyfin_enabled            | Boolean | false                               | Enable/Disable the application                   |
| jellyfin_tag                | String  | "latest"                            | Tag to use for the docker image                  |
| jellyfin_directories.config | String  | "{{ docker_home }}/jellyfin/config" | Path were application config should be stored    |
| jellyfin_music_directory    | String  | "{{ charjabox_music_directory }}"   | Path were music is stored                        |
| jellyfin_tv_directory       | String  | "{{ charjabox_tv_directory }}"      | Path were TV shows are stored                    |
| jellyfin_movies_directory   | String  | "{{ charjabox_movies_directory }}"  | Path were movies are stored                      |
| jellyfin_traefik_enabled    | Boolean | false                               | Enable/Disable access to application via Traefik |
| jellyfin_domain             | String  | "jellyfin.{{ charjabox_domain }}"   | Domain used to access the application            |
| jellyfin_http_port          | Int     | 6005                                | Port used to access the application via HTTP     |
| jellyfin_https_port         | Int     | 6006                                | Port used to access the application via HTTPS    |
