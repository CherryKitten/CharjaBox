# General
[Portainer](https://portainer.io/) - Web Interface for managing Docker containers

You can use Portainer to get a simple overview over your running containers, to access logs and container shells and more, without needing a terminal.

After enabling Portainer, go to the webinterface (by default the port is 9000) and create your admin user. Then choose `local` as an endpoint to manage your local docker install.

# Variables

| Variable                     | Type    | Default                              | Comment                                          |
|------------------------------|---------|--------------------------------------|--------------------------------------------------|
| portainer_enabled            | Boolean | false                                | Enable/Disable the application                   |
| portainer_tag                | String  | "latest"                             | Tag to use for the docker image                  |
| portainer_directories.config | String  | "{{ docker_home }}/portainer/config" | Path were application config should be stored    |
| portainer_traefik_enabled    | Boolean | false                                | Enable/Disable access to application via Traefik |
| portainer_domain             | String  | "portainer.{{ charjabox_domain }}"   | Domain used to access the application            |
| portainer_port               | Int     | 9000                                 | Port used to access the application              |
