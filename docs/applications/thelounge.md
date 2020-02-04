# General
[TheLounge](https://thelounge.chat/) - Self-hosted web IRC client

When in private mode, you have to run some commands to create accounts. Use the console function of Portainer or the [docker exec](https://docs.docker.com/engine/reference/commandline/exec/) command for this. You can find all the commands you need [here](https://thelounge.chat/docs/users).

Most configuration is done in `thelounge_directories.config/config.js`.


# Variables

| Variable                     | Type    | Default                              | Comment                                          |
|------------------------------|---------|--------------------------------------|--------------------------------------------------|
| thelounge_enabled            | Boolean | false                                | Enable/Disable the application                   |
| thelounge_tag                | String  | "latest"                             | Tag to use for the docker image                  |
| thelounge_directories.config | String  | "{{ docker_home }}/thelounge/config" | Path were application config should be stored    |
| thelounge_traefik_enabled    | Boolean | false                                | Enable/Disable access to application via Traefik |
| thelounge_domain             | String  | "thelounge.{{ charjabox_domain }}"   | Domain used to access the application            |
| thelounge_port               | Int     | 7743                                 | Port used to access the application              |
