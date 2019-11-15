# Configuration

Configuration is done in multiple files in a group-specific subfolder of the `settings` folder. By default the directory `settings/charjabox/` is used if you don't specify a different path. You should never touch the `settings/defaults/` folder in normal use.

You only need to add the settings that you actually change to your settings folder. If you do this by copying the whole files over from `settings/defaults/` or by creating your own files with just the variables you need is up to you.
Every file ending in `.yml` inside of `settings/$YOURSETTINGS` will be recognized by CharjaBox. 

If you use CharjaBox to set up multiple servers, you can use different settings folders for every server. 

To do this, set different hostnames or groups for your different servers in your [Inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#inventory-basics-hosts-and-groups) and create 
`host_vars/$HOSTNAME` or `group_vars/$GROUPNAME` files for each server/group. 

In those files you can change the `charjabox_settings_path` variable and set your settings in a folder inside of `settings/` with the same name as the variable.

## General

`charjabox_general.yml` includes all general configuration about your server, like Hostnames, Timezones, etc.

## Application Settings

Every application has it's own settings file, where you can enable the Application and apply App-specific configuration.

# Example

I have a local server currently running Portainer, Heimdall, Nginx and Plex. I called the group `production` to differentiate it from a testing server. 

The inventory file looks like this:

```
[production]
192.168.1.22
[testing]
192.168.1.33
[someothergroup]
192.168.1.42

```

The group name `production` tells Ansible to look for the file `group_vars/production.yml`, which looks like this:

```
charjabox_settings_path: "production"

```

This variable tells the playbook to look for custom variables in `settings/production`, where I have the following files containing custom settings:

```
charjabox_general.yml
heimdall.yml
nginx.yml
plex.yml
portainer.yml
```
