# General
[Nginx](https://www.nginx.com/) - Open source web server and a reverse proxy server

`nginx_directories.config` binds to `/etc/nginx`, for information on how to configure nginx see the [nginx documentation](https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/).

`nginx_directories.data` binds to `/var/www/`, put everything the webserver should serve in here.

For information on how to setup nginx as a reverse proxy for your other apps, see [this documentation page](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/).

# Variables

| Variable                 | Type    | Default                        | Comment                                          |
|--------------------------|---------|--------------------------------|--------------------------------------------------|
| nginx_enabled            | Boolean | false                          | Enable/Disable the application                   |
| nginx_tag                | String  | "latest"                       | Tag to use for the docker image                  |
| nginx_directories.config | String  | "{{docker_home}}/nginx/config" | Path were application config should be stored    |
| nginx_directories.data   | String  | "{{docker_home}}/nginx/data"   | Path were application data should be stored      |
| nginx_traefik_enabled    | Boolean | false                          | Enable/Disable access to application via Traefik |
| nginx_domain             | String  | "nginx.{{ charjabox_domain }}" | Domain used to access the application            |
| nginx_http_port          | Int     | 80                             | Port used to access the application via HTTP     |
| nginx_https_port         | Int     | 443                            | Port used to access the application via HTTPs    |
