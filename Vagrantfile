# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.69.42"
  config.vm.provision "ansible" do |ansible|
    ansible.host_vars = {
      "default" => {"charjabox_settings_path" => "vagrant.settings"}
    }
    ansible.verbose= "vvv"
    ansible.playbook = "charjabox.yml"
  end
end
