# General
[Bazarr](https://github.com/morpheus65535/bazarr) - Companion application to Sonarr and Radarr for downloading subtitles

Bazarr uses the paths set in `charjabox_tv_directory` and `charjabox_movies_directory` in `charjabox_general.yml` to access your TV and movie collections.

The subtitles get downloaded to the same directory as your media files.

# Variables

| Variable                | Type    | Default                         | Comment                                          |
|-------------------------|---------|---------------------------------|--------------------------------------------------|
| bazarr_enabled          | Boolean | false                           | Enable/Disable the application                   |
| bazarr_tag              | String  | "latest"                        | Tag to use for the docker image                  |
| bazarr_config_directory | String  | "{{ docker_home }}/bazarr/data" | Path were application config should be stored    |
| bazarr_traefik_enabled  | Boolean | false                           | Enable/Disable access to application via Traefik |
| bazarr_domain           | String  | "bazarr.{{ charjabox_domain }}" | Domain used to access the application            |
| bazarr_port             | Int     | 6767                            | Port used to access the application              |
