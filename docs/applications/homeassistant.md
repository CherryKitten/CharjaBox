# General
[Home-Assistant](https://www.home-assistant.io/hassio/) - Open source home automation that puts local control and privacy first. 

After setting up Home-Assistant, visit the Webinterface and create your Admin account.

# Variables

| Variable                         | Type    | Default                                   | Comment                                          |
|----------------------------------|---------|-------------------------------------------|--------------------------------------------------|
| homeassistant_enabled            | Boolean | false                                     | Enable/Disable the application                   |
| homeassistant_tag                | String  | "stable"                                  | Tag to use for the docker image                  |
| homeassistant_directories.config | String  | "{{ docker_home }}/homeassistant/config/" | Path were application config should be stored    |
| homeassistant_traefik_enabled    | Boolean | false                                     | Enable/Disable access to application via Traefik |
| homeassistant_domain             | String  | "homeassistant.{{ charjabox_domain }}"    | Domain used to access the application            |
| homeassistant_port               | Int     | 8123                                      | Port used to access the webinterface             |
