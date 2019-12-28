# General
[Firefly III](https://firefly-iii.org/) - Free and open source personal finance manager

After enabling Firefly, you can access the Webinterface and create an account. Then you can configure Firefly with your bank accounts, budgets, etc.

# Variables

| Variable                 | Type    | Default                            | Comment                                                                                               |
|--------------------------|---------|------------------------------------|-------------------------------------------------------------------------------------------------------|
| firefly_enabled          | Boolean | false                              | Enable/Disable the application                                                                        |
| firefly_tag              | String  | "latest"                           | Tag to use for the docker image                                                                       |
| firefly_db_tag           | String  | "10"                               | Tag to use for the database docker image                                                              |
| firefly_config_directory | String  | "{{ docker_home }}/firefly/config" | Path were application config should be stored                                                         |
| firefly_db_password      | String  | ""                                 | Password for Firefly Database                                                                         |
| firefly_app_key          | String  | ""                                 | Encryption Key for Firefly, Must be exactly 32 Chars. Change this to something you generated randomly |
| firefly_traefik_enabled  | Boolean | false                              | Enable/Disable access to application via Traefik                                                      |
| firefly_domain           | String  | "firefly.{{ charjabox_domain }}"   | Domain used to access the application                                                                 |
| firefly_port             | Int     | 4005                               | Port used to access the application                                                                   |
