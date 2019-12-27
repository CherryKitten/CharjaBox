# General
[Radarr](https://radarr.video/) - Manage your Movie collection

Set `radarr_data_directory` to the folder where downloaded `.torrent` files should get stored.

Radarr uses the path set in `charjabox_movies_directory` in `charjabox_general.yml` to access your movie collection.

# Variables

| Variable                | Type    | Default                           | Comment                                          |
|-------------------------|---------|-----------------------------------|--------------------------------------------------|
| radarr_enabled          | Boolean | false                             | Enable/Disable the application                   |
| radarr_tag              | String  | "latest"                          | Tag to use for the docker image                  |
| radarr_config_directory | String  | "{{ docker_home }}/radarr/config" | Path were application config should be stored    |
| radarr_data_directory   | String  | "{{ docker_home }}/radarr/data"   | Path were application data should be stored      |
| radarr_traefik_enabled  | Boolean | false                             | Enable/Disable access to application via Traefik |
| radarr_domain           | String  | "radarr.{{ charjabox_domain }}"   | Domain used to access the application            |
| radarr_port             | Int     | 7878                              | Port to access the application                   |
