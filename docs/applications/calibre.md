# General
[Calibre-Web](https://github.com/janeczku/calibre-web) - Web app for browsing, reading and downloading eBooks stored in a Calibre database 

You need an existing Calibre library in your books directory. For more information see https://calibre-ebook.com/.

The default login for the admin account ist `admin:admin123`.

# Variables

| Variable                   | Type    | Default                            | Comment                                          |
|----------------------------|---------|------------------------------------|--------------------------------------------------|
| calibre_enabled            | Boolean | false                              | Enable/Disable the application                   |
| calibre_tag                | String  | "latest"                           | Tag to use for the docker image                  |
| calibre_directories.config | String  | "{{ docker_home }}/calibre/config" | Path were application config should be stored    |
| calibre_directories.books  | String  | "{{ charjabox_books_directory }}"  | Path were the calibre library is located         |
| calibre_traefik_enabled    | Boolean | false                              | Enable/Disable access to application via Traefik |
| calibre_domain             | String  | "calibre.{{ charjabox_domain }}"   | Domain used to access the application            |
| calibre_port               | Int     | 8083                               | Port used to access the application              |
