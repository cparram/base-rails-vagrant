# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "nodejs"
    chef.add_recipe "app::rbenv"
    chef.add_recipe "app::postgres"
    chef.add_recipe "app::setup"

    # structure of chef json with example values
    chef.json = {
      db: {
        user: {
          name: 'username',
          password: 'passwd'
        }
      },
      postgresql: {
        password: {
          postgres: "iloverandompasswordsbutthiswilldo"
        }
      }
    }
  end
end
