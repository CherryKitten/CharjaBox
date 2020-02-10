# General
[Nextcloud](https://nextcloud.com/) - Selfhosted cloud file hosting & sharing

After starting up Nextcloud, visit the Webinterface to finish setup.

# Variables

| Variable                   | Type    | Default                            | Comment                                          |
|----------------------------|---------|------------------------------------|--------------------------------------------------|
| nextcloud_enabled          | Boolean | false                              | Enable/Disable the application                   |
| nextcloud_tag              | String  | "latest"                           | Tag to use for the docker image                  |
| nextcloud_db_tag           | String  | "latest"                           | Tag to use for the database docker image         |
| nextcloud_directories.data | String  | "{{ docker_home }}/nextcloud/data" | Path were application data should be stored      |
| nextcloud_traefik_enabled  | Boolean | false                              | Enable/Disable access to application via Traefik |
| nextcloud_domain           | String  | "nextcloud.{{ charjabox_domain }}" | Domain used to access the application            |
| nextcloud_admin_username   | String  | "nextcloud"                        | Username for the first admin account             |
| nextcloud_admin_password   | String  | ""                                 | Password for the first admin account             |
| nextcloud_db_password      | String  | ""                                 | Password for database account                    |
| nextcloud_db_rootpassword  | String  | ""                                 | Password for database root account               |
| nextcloud_smtp_enabled     | Boolean | false                              | Enable/Disable Mails via SMTP                    |
| nextcloud_smtp_host        | String  | ""                                 | SMTP Host to connect to                          |
| nextcloud_smtp_secure      | String  | "ssl"                              | Either "ssl" or "tls"                            |
| nextcloud_smtp_port        | Int     | 465                                | SMTP Port to connect to                          |
| nextcloud_smtp_authtype    | String  | "LOGIN"                            | SMTP Authentication Type                         |
| nextcloud_smtp_user        | String  | ""                                 | SMTP User                                        |
| nextcloud_smtp_password    | String  | ""                                 | SMTP Password                                    |
| nextcloud_smtp_from        | String  | "{{ charjabox_email }}"            | From: Header                                     |
| nextcloud_smtp_domain      | String  | "{{ nextcloud_domain }}"           | Domain to send Mails from                        |
| nextcloud_port             | Int     | 8380                                | Port used to access the application              |
