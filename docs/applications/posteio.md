# General
[Poste.io](https://poste.io/) - All-in-one selfhosted E-Mail solution

After enabling Poste.io, go to the webinterface and set up your admin account.

Correct DNS records are very important for email to work, please see [this part](https://poste.io/doc/configuring-dns) of the Poste.io documentation for help with that.

If you want to run Poste.io behind a reverse proxy (like Traefik), you'll need to set `posteio_https: "OFF"`, this is case sensitive.

# Variables

| Variable                 | Type    | Default                          | Comment                                                                  |
|--------------------------|---------|----------------------------------|--------------------------------------------------------------------------|
| posteio_enabled          | Boolean | false                            | Enable/Disable the application                                           |
| posteio_tag              | String  | "latest"                         | Tag to use for the docker image                                          |
| posteio_directories.data | String  | "{{ docker_home }}/posteio/data" | Path were application data should be stored                              |
| posteio_https            | String  | "ON"                             | Enable/Disable HTTP2HTTPS redirect. Can be "ON" or "OFF", case sensitive |
| posteio_disableweb       | String  | "false"                          | Enable/Disable Roundcube Webmail                                         |
| posteio_disableclamav    | String  | "false"                          | Enable/Disable ClamAV                                                    |
| posteio_traefik_enabled  | Boolean | false                            | Enable/Disable access to application via Traefik                         |
| posteio_domain           | String  | "posteio.{{ charjabox_domain }}" | Domain used to access the application                                    |
| posteio_smtp_port        | Int     | 25                               | SMTP Port                                                                         |
| posteio_http_port        | Int     | 8183                             | HTTP Port                                                                         |
| posteio_pop3_port        | Int     | 110                              | POP3 Port                                                                         |
| posteio_imap_port        | Int     | 143                              | IMAP Port                                                                         |
| posteio_https_port       | Int     | 8184                             | HTTPS Port                                                                         |
| posteio_smtps_port       | Int     | 465                              | SMTPS Port                                                                         |
| posteio_msa_port         | Int     | 587                              | MSA Port                                                                         |
| posteio_imaps_port       | Int     | 993                              | IMAPS Port                                                                         |
| posteio_pop3s_port       | Int     | 995                              | POP3S Port                                                                         |
| posteio_sieve_port       | Int     | 4190                             | Sieve Port                                                                         |
