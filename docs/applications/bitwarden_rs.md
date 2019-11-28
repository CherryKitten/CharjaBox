# Bitwarden_rs
[Bitwarden_rs](https://github.com/dani-garcia/bitwarden_rs) - Password manager compatible with [Bitwarden apps](https://bitwarden.com/)

## Enable/Disable registrations
To disable open registrations and/or invites set `bitwarden_rs_signups_allowed` and/or `bitwarden_rs_invites_allowed` to `false`. Disabling signups does not automatically disable invites.

## Admin interface
To enable the Admin webinterface, set `bitwarden_rs_admintoken` to a secure password. When this is set you access the admin interface at `/admin`.

## Websocket notifications

To enable WebSockets notifications, an external reverse proxy is necessary, and it must be configured to do the following:
- Route the `/notifications/hub` endpoint to the WebSocket server, by default at port `3012`, making sure to pass the `Connection` and `Upgrade` headers. (Note the port can be changed with `WEBSOCKET_PORT` variable)
- Route everything else, including `/notifications/hub/negotiate`, to the standard Rocket server, by default at port `9001`.

Then you need to enable WebSockets negotiation on the bitwarden_rs side by setting the `bitwarden_rs_websocket_enabled` variable to `true`.

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/Enabling-WebSocket-notifications)

## Email
To activate the e-mail functionality of bitwarden_rs you need to configure an smtp server connection.

First, set `bitwarden_rs_smtp_enabled` to `true`, then configure the following variables, according to your existing smtp server:
```
bitwarden_rs_smtp_host: ""
bitwarden_rs_smtp_from: ""
bitwarden_rs_smtp_port: ""
bitwarden_rs_smtp_ssl: ""
bitwarden_rs_smtp_username: ""
bitwarden_rs_smtp_password: ""
```

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/SMTP-configuration).

## Yubikey OTP authentication
To enable YubiKey authentication, you must set the variables `bitwarden_rs_yubikey_server`, `bitwarden_rs_yubikey_id` and `bitwarden_rs_yubikey_key` to a valid configuration, then enable it by setting `bitwarden_rs_yubikey_enabled: true`

More information [here](https://github.com/dani-garcia/bitwarden_rs/wiki/Enabling-Yubikey-OTP-authentication)
