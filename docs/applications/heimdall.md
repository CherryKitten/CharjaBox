# General
[Heimdall](https://heimdall.site/) - Application Dashboard for easy access to all your services

# Variables

| Variable                    | Type    | Default                             | Comment                                          |
|-----------------------------|---------|-------------------------------------|--------------------------------------------------|
| heimdall_enabled            | Boolean | false                               | Enable/Disable the application                   |
| heimdall_tag                | String  | "latest"                            | Tag to use for the docker image                  |
| heimdall_directories.config | String  | "{{ docker_home }}/heimdall/config" | Path were application config should be stored    |
| heimdall_traefik_enabled    | Boolean | false                               | Enable/Disable access to application via Traefik |
| heimdall_domain             | String  | "heimdall.{{ charjabox_domain }}"   | Domain used to access the application            |
| heimdall_http_port          | Int     | 4000                                | Port used to access the application via HTTP     |
| heimdall_https_port         | Int     | 4001                                | Port used to access the application via HTTPS    |
