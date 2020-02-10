CharjaBox uses the ansible role [kyl191.openvpn](https://github.com/kyl191/ansible-role-openvpn) to set up an openVPN server.

To enable the openVPN server set `openvpn_enabled: true`, all other variables are documented in the role repository. (Click [here](https://github.com/kyl191/ansible-role-openvpn#role-variables))

A very simple setup could look like this:

```
openvpn_enabled: true
openvpn_server_hostname: "openvpn.example.com"
openvpn_clients: [alice-thinkpad, alice-phone, bob-macbook, bob-tablet]
```
