# Configuration

Configuration is done in multiple files in the `settings` folder. You should never touch the `settings.template` folder in normal use.

If you use CharjaBox to set up multiple servers, you can use different settings folders for every server. 

To do this, set different hostnames or groups for your different servers in your [Inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#inventory-basics-hosts-and-groups) and create 
`host_vars/$HOSTNAME` or `group_vars/$GROUPNAME` files for each server/group. 

In those files you can set the `charjabox_settings_path` variable to a path matching the pattern `*.settings` and create a copy of `settings.template` in that path.

## General

`charjabox_general.yml` includes all general configuration about your server, like Hostnames, Timezones, etc.

## Application Settings

Every application has it's own settings file, where you can enable the Application and apply App-specific configuration.