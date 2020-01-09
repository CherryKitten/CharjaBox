# General
[Duplicati](https://www.duplicati.com/) - Free backup software to store encrypted backups online

Remember to set the source directory variable to a folder you want to backup, or that contains a folder you want to backup.
If there are many folders you want to backup, you could set it to the root of your filesystem:

```
duplicati_directories:
  source: "/"
```

# Variables

| Variable                     | Type    | Default                              | Comment                                          |
|------------------------------|---------|--------------------------------------|--------------------------------------------------|
| duplicati_enabled            | Boolean | false                                | Enable/Disable the application                   |
| duplicati_tag                | String  | "latest"                             | Tag to use for the docker image                  |
| duplicati_directories.config | String  | "{{ docker_home }}/duplicati/config" | Path were application config should be stored    |
| duplicati_directories.data   | String  | "{{ docker_home }}/duplicati/data"   | Path were local backups should be stored         |
| duplicati_directories.source | String  | "{{ docker_home }}/duplicati/source" | Source path for backups                          |
| duplicati_traefik_enabled    | Boolean | false                                | Enable/Disable access to application via Traefik |
| duplicati_domain             | String  | 8200                                 | Port used to access the application              |
| duplicati_port               | Int     | "duplicati.{{ charjabox_domain }}"   | Domain used to access the application            |
