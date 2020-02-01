# Contributing

There are many ways to contribute to CharjaBox. Everything helps!

## Requesting an Application

If you want to request an Application, please open an Issue and use the correct issue template.

## Adding new Applications

To add a new application, you can use an existing app as a template.

You will need to create the following files:

```
group_vars/all/$appname.yml # For the default settings
roles/charjabox_deploy/templates/docker-compose.$appname.j2 # Docker-compose file
```

You will also need to edit the following files:

```
group_vars/all/charjabox_ports.yml # To configure the default ports
roles/charjabox_deploy/defaults/main.yml # To add the empty additional value variables
charjabox.yml # Add the application to the list of apps at the top
```

Please also add documentation for the new app in `docs/applications/$appname` and `README.md`, as well as `docs/index.md` and don't forget to add the new file to `mkdocs.yml`.
