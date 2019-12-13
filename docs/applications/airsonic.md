# General
[Airsonic](https://airsonic.github.io/) - Free, web-based media streamer, providing ubiquitous access to your music

# Setup
After enabling Airsonic, immediately visit the Webinterface (default port 4040), login with `admin:admin` and change the password.
All settings are changed via the Webinterface.

# Variables

| Variable                 | Type                              | Default                           | Comment                                          |
|--------------------------|-----------------------------------|-----------------------------------|--------------------------------------------------|
| airsonic_enabled         | Boolean                           | false                             | Enable/Disable the application                   |
| airsonic_data_directory  | String                            | "{{ docker_home }}/airsonic/data" | Path were application data should be stored      |
| airsonic_music_directory | String                            | "{{ charjabox_music_directory }}" | Path were music files are stored                 |
| airsonic_traefik_enabled | Boolean                           | false                             | Enable/Disable access to application via Traefik |
| airsonic_domain          | String                            | "airsonic.{{ charjabox_domain }}" | Domain used to access the application            |
| airsonic_port            | Int                               | 4040                              | Port used to access the webinterface             |
