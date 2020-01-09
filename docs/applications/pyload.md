# General
[pyLoad](https://pyload.net/) - Free and open-source Download Manager written in Python

After setting up pyLoad, visit the webinterface and login with user `pyload` and password `pyload`.
Don't forget to change the password afterwards.

# Variables

| Variable                     | Type    | Default                               | Comment                                          |
|------------------------------|---------|---------------------------------------|--------------------------------------------------|
| pyload_enabled               | Boolean | false                                 | Enable/Disable the application                   |
| pyload_tag                   | String  | "latest"                              | Tag to use for the docker image                  |
| pyload_directories.config    | String  | "{{ docker_home }}/pyload/config"     | Path were application config should be stored    |
| pyload_directories.downloads | String  | "{{ charjabox_downloads_directory }}" | Path were downloads should be stored             |
| pyload_traefik_enabled       | Boolean | false                                 | Enable/Disable access to application via Traefik |
| pyload_domain                | String  | 8001                                  | Port used to access the application              |
| pyload_port                  | Int     | "pyload.{{ charjabox_domain }}"       | Domain used to access the application            |
