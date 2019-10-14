# Installation

1. Make sure all [Requirements](requirements.md) are met
2. Clone the repository and `cd` into the directory
3. Copy `settings.template` to `settings` and [configure](configuration.md) everything
4. Create an `inventory` file and add your server's IP/Hostname/Domain
4. Install needed roles: `ansible-galaxy install -r requirements.yml`
5. Run the playbook: `ansible-playbook -i inventory -u $USER charjabox.yml`
