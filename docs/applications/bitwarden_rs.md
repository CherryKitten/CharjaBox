# General
[Bitwarden_rs](https://github.com/dani-garcia/bitwarden_rs) - Password manager compatible with [Bitwarden apps](https://bitwarden.com/)

# Enable/Disable registrations
To disable open registrations and/or invites set `bitwarden_rs_signups_allowed` and/or `bitwarden_rs_invites_allowed` to `false`. Disabling signups does not automatically disable invites.

# Admin interface
To enable the Admin webinterface, set `bitwarden_rs_admintoken` to a secure password. When this is set you access the admin interface at `/admin`.

# Websocket notifications

To enable WebSockets notifications, an external reverse proxy is necessary, and it must be configured to do the following:
- Route the `/notifications/hub` endpoint to the WebSocket server, by default at port `3012`, making sure to pass the `Connection` and `Upgrade` headers. (Note the port can be changed with `WEBSOCKET_PORT` variable)
- Route everything else, including `/notifications/hub/negotiate`, to the standard Rocket server, by default at port `9001`.

Then you need to enable WebSockets negotiation on the bitwarden_rs side by setting the `bitwarden_rs_websocket_enabled` variable to `true`.

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/Enabling-WebSocket-notifications)

# Email
To activate the e-mail functionality of bitwarden_rs you need to configure an smtp server connection.

First, set `bitwarden_rs_smtp_enabled` to `true`, then configure the following variables, according to your existing smtp server:
```
bitwarden_rs_smtp_host: ""
bitwarden_rs_smtp_from: ""
bitwarden_rs_smtp_port: ""
bitwarden_rs_smtp_ssl: true
bitwarden_rs_smtp_username: ""
bitwarden_rs_smtp_password: ""
```

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/SMTP-configuration).

# Yubikey OTP authentication
To enable YubiKey authentication, you must set the variables `bitwarden_rs_yubikey_server`, `bitwarden_rs_yubikey_id` and `bitwarden_rs_yubikey_key` to a valid configuration, then enable it by setting `bitwarden_rs_yubikey_enabled: true`

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/Enabling-Yubikey-OTP-authentication)

# Variables

| Variable                       | Type    | Default                               | Comment                                                                |
|--------------------------------|---------|---------------------------------------|------------------------------------------------------------------------|
| bitwarden_rs_enabled           | Boolean | false                                 | Enable/Disable the application                                         |
| bitwarden_rs_tag               | String  | "latest"                              | Tag to use for the docker image                  |
| bitwarden_rs_directories.data  | String  | "{{ docker_home }}/bitwarden_rs/data" | Path were application data should be stored                            |
| bitwarden_rs_signups_allowed   | Boolean | true                                  | Enable/Disable open account creation                                   |
| bitwarden_rs_invites_allowed   | Boolean | true                                  | Enable/Disable account creation via invites                            |
| bitwarden_rs_admintoken        | String  | ""                                    | Password for admin interface. If left blank the interface is disabled. |
| bitwarden_rs_websocket_enabled | Boolean | false                                 | Enable/Disable Websocket                                               |
| bitwarden_rs_yubikey_enabled   | Boolean | false                                 | Enable/Disable Yubikey OTP authentication                              |
| bitwarden_rs_yubikey_server    | String  | ""                                    | The server to use for Yubikey OTP authentication                       |
| bitwarden_rs_yubikey_id        | String  | ""                                    | The ID to use on the Yubikey server                                    |
| bitwarden_rs_yubikey_key       | String  | ""                                    | The secret key for the Yubikey ID                                      |
| bitwarden_rs_smtp_enabled      | Boolean | false                                 | Enable/Disable sending of mails via smtp                               |
| bitwarden_rs_smtp_host         | String  | ""                                    | SMTP Host to use for sending mail                                      |
| bitwarden_rs_smtp_from         | String  | ""                                    | SMTP ´from:´ header                                                    |
| bitwarden_rs_smtp_port         | String  | ""                                    | SMTP Port to connect to                                                |
| bitwarden_rs_smtp_ssl          | Boolean | true                                  | Enable/Disable SSL connections to SMTP Host                            |
| bitwarden_rs_smtp_username     | String  | ""                                    | Username to authenticate with the SMTP Host                            |
| bitwarden_rs_smtp_password     | String  | ""                                    | Password to authenticate with the SMTP Host                            |
| bitwarden_rs_traefik_enabled   | Boolean | false                                 | Enable/Disable access to application via Traefik                       |
| bitwarden_rs_domain            | String  | "bitwarden.{{ charjabox_domain }}"    | Domain used to access the application                                  |
| bitwarden_rs_http_port         | Int     | 9001                                  | Port used to access the application                                    |
| bitwarden_rs_websocket_port    | Int     | 3012                                  | Port used for Websocket                                                |
