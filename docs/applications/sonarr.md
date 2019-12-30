# General
[Sonarr](https://sonarr.tv/) - Manage your TV collection

Set `sonarr_directories.data` to the folder where downloaded `.torrent` files should get stored.

Sonarr uses the path set in `charjabox_tv_directory` in `charjabox_general.yml` to access your TV collection.

# Variables

| Variable                  | Type    | Default                           | Comment                                          |
|---------------------------|---------|-----------------------------------|--------------------------------------------------|
| sonarr_enabled            | Boolean | false                             | Enable/Disable the application                   |
| sonarr_tag                | String  | "latest"                          | Tag to use for the docker image                  |
| sonarr_directories.config | String  | "{{ docker_home }}/sonarr/config" | Path were application config should be stored    |
| sonarr_directories.data   | String  | "{{ docker_home }}/sonarr/data"   | Path were application data should be stored      |
| sonarr_traefik_enabled    | Boolean | false                             | Enable/Disable access to application via Traefik |
| sonarr_domain             | String  | "sonarr.{{ charjabox_domain }}"   | Domain used to access the application            |
| sonarr_port               | Int     | 8989                              | Port to access the application                   |
