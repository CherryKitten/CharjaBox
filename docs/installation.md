# Installation

1. Make sure all [Requirements](requirements.md) are met
2. Clone the repository and `cd` into the directory
3. Copy `settings.template` to `settings` and [configure](configuration.md) everything
4. Create an `inventory` file and add your server's IP/Hostname/Domain
4. Install needed roles: `ansible-galaxy install -r requirements.yml`
5. Run the playbook: `ansible-playbook -i inventory -u $USER charjabox.yml`

You can use the script `charjabox/scripts/initialize.sh` to skip part of steps 3 and 4. This scripts asks you about your server IP, group name and settings folder and creates the files for you automatically.

You still need to do it manually if you want to use multiple servers for now. This functionality will be added to the script in the future.
