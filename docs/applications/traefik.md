# Traefik
[Traefik](https://containo.us/traefik/) - Automate reverse proxy access to your server

To enable Traefik set `traefik_enabled` to `true`, then set `$appname_traefik_enabled` to `true` for every app you want to be proxied.

To enable acess to Traefik's webinterface at `traefik_webinterface_port` set `traefik_dashboard_enabled` and `traefik_insecure_api` to `true`. Secure acess will be implemented soon.

To get automated SSL certificates via LetsEncrypt, all you need to do is set `traefik_letsencrypt_enabled` to `true`. Traefik will then automatically request certificates for all apps that are set up for access via Traefik.
