# Nginx
[Nginx](https://www.nginx.com/) - Open source web server and a reverse proxy server

`nginx_config_directory` binds to `/etc/nginx`, for information on how to configure nginx see the [nginx documentation](https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/).

`nginx_data_directory` binds to `/var/www/`, put everything the webserver should serve in here.

For information on how to setup nginx as a reverse proxy for your other apps, see [this documentation page](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/).