# Contributing

There are many ways to contribute to CharjaBox. Everything helps!

## Requesting an Application

If you want to request an Application, please open an Issue and use the correct issue template.

## Adding new Applications

To add a new application, you can use an existing app as a template.

You will need to create the following files:

```
settings/defaults/$appname.yml # For the settings
roles/$appname/templates/docker-compose.$appname.j2 # Docker-compose file
```

You will also need to edit the following files:

```
settings/defaults/charjabox_ports.yml # To configure the ports
```

Please also add documentation for the new app in `docs/applications/$appname` and `README.md`, as well as `docs/index.md`
