# General
[Gitea](https://gitea.io/) - Git with a cup of tea

Visit `http://$YourIP:$YourPort/install` after activating Gitea to complete the installation process.

# Variables

| Variable                    | Type    | Default                        | Comment                                          |
|-----------------------------|---------|--------------------------------|--------------------------------------------------|
| gitea_enabled               | Boolean | false                          | Enable/Disable the application                   |
| gitea_tag                   | String  | "latest"                        | Tag to use for the docker image                  |
| gitea_data_directory        | String  | "{{ docker_home }}/gitea/data" | Path were application data should be stored      |
| gitea_appname               | String  | "Gitea: Git with a cup of tea" | Title of application webpage                     |
| gitea_runmode               | String  | "prod"                         | Either "prod" or "dev", for debugging purposes   |
| gitea_domain                | String  | "gitea.{{ charjabox_domain }}" | Domain used to access the application            |
| gitea_disable_ssh           | Boolean | false                          | Enable/Disable SSH access to the application     |
| gitea_disable_registrations | Boolean | false                          | Enable/Disable registrations                     |
| gitea_require_signin        | Boolean | false                          | Require signin to access public resources        |
| gitea_traefik_enabled       | Boolean | false                          | Enable/Disable access to application via Traefik |
| gitea_http_port             | Int     | 3000                           | Port used to access the application              |
| gitea_ssh_port              | Int     | 222                            | Port used to access SSH                          |
