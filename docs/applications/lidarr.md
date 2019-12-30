# General
[Lidarr](https://lidarr.audio/) - Manage your music collection

Set `lidarr_directories.data` to the folder where downloaded `.torrent` files should get stored.

Lidarr uses the path set in `charjabox_music_directory` in `charjabox_general.yml` to access your music collection.

# Variables

| Variable                  | Type    | Default                           | Comment                                          |
|---------------------------|---------|-----------------------------------|--------------------------------------------------|
| lidarr_enabled            | Boolean | false                             | Enable/Disable the application                   |
| lidarr_tag                | String  | "latest"                          | Tag to use for the docker image                  |
| lidarr_directories.config | String  | "{{ docker_home }}/lidarr/config" | Path were application config should be stored    |
| lidarr_directories.data   | String  | "{{ docker_home }}/lidarr/data"   | Path were application data should be stored      |
| lidarr_traefik_enabled    | Boolean | false                             | Enable/Disable access to application via Traefik |
| lidarr_domain             | String  | "lidarr.{{ charjabox_domain }}"   | Domain used to access the application            |
| lidarr_port               | Int     | 8686                              | Port used to access the application              |
