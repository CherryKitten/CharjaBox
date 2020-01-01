# General
[Tautulli](https://tautulli.com/) - Monitor your Plex Media Server

# Variables 

| Variable                    | Type    | Default                             | Comment                                          |
|-----------------------------|---------|-------------------------------------|--------------------------------------------------|
| tautulli_enabled            | Boolean | false                               | Enable/Disable the application                   |
| tautulli_tag                | String  | "latest"                            | Tag to use for the docker image                  |
| tautulli_directories.config | String  | "{{ docker_home }}/tautulli/config" | Path were application config should be stored    |
| tautulli_traefik_enabled    | Boolean | false                               | Enable/Disable access to application via Traefik |
| tautulli_domain             | String  | "tautulli.{{ charjabox_domain }}"   | Domain used to access the application            |
| tautulli_port               | Int     | 8181                                | Port used to access the application              |
