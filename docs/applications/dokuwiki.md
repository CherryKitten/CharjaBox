# General
[Dokuwiki](https://www.dokuwiki.org/dokuwiki) - Simple to use and highly versatile Open Source wiki software that doesn't require a database

Upon first install go to `http://$IP:$PORT/install.php`.

Once you have completed the setup, restart the container, login as admin and set "Use nice URLs" in the admin/Configuration Settings panel to .htaccess and tick Use slash as namespace separator in URLs to enable nice URLs.

You will find the webui at `http://$IP:$PORT/`, for more info see [Dokuwiki](https://www.dokuwiki.org/dokuwiki/).

_This explanation was copied from the [Linuxserver.io page for Dokuwiki](https://hub.docker.com/r/linuxserver/dokuwiki)._

# Variables

| Variable                  | Type    | Default                             | Comment                                          |
|---------------------------|---------|-------------------------------------|--------------------------------------------------|
| dokuwiki_enabled          | Boolean | false                               | Enable/Disable the application                   |
| dokuwiki_tag              | String  | "latest"                            | Tag to use for the docker image                  |
| dokuwiki_config_directory | String  | "{{ docker_home }}/dokuwiki/config" | Path were application config should be stored    |
| dokuwiki_traefik_enabled  | Boolean | false                               | Enable/Disable access to application via Traefik |
| dokuwiki_domain           | String  | "dokuwiki.{{ charjabox_domain }}"   | Domain used to access the application            |
| dokuwiki_http_port        | Int     | 6009                                | Port used to access the application via HTTP     |
| dokuwiki_https_port       | Int     | 6010                                | Port used to access the application via HTTPS    |
