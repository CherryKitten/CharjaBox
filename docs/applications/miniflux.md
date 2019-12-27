# General
[Miniflux](https://miniflux.app/) - Minimalist and opinionated feed reader

# Variables

| Variable                 | Type    | Default                           | Comment                                          |
|--------------------------|---------|-----------------------------------|--------------------------------------------------|
| miniflux_enabled         | Boolean | false                             | Enable/Disable the application                   |
| miniflux_tag             | String  | "latest"                          | Tag to use for the docker image                  |
| miniflux_db_tag          | String  | "11.1"                            | Tag to use for the database docker image         |
| miniflux_data_directory  | String  | "{{ docker_home }}/miniflux/data" | Path were application data should be stored      |
| miniflux_db_password     | String  | ""                                | Password to use for application Database         |
| miniflux_admin_username  | String  | "Admin"                           | Username for Admin account                       |
| miniflux_admin_password  | String  | ""                                | Password for Admin account                       |
| miniflux_traefik_enabled | Boolean | false                             | Enable/Disable access to application via Traefik |
| miniflux_domain          | String  | "miniflux.{{ charjabox_domain }}" | Domain used to access the application            |
| miniflux_port            | Int     | 8778                              | Port used to access the webinterface             |
