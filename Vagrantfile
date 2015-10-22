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
    chef.add_recipe "ruby_build"
    chef.add_recipe "ruby_rbenv::user"
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
      },
      rbenv: {
        user_installs: [
          {
            user: 'vagrant',
            rubies: ['2.2.3'],
            global: '2.2.3',
            gems: {
              '2.2.3' => [
                { name: 'bundler' },
                { name: 'rake' }
              ]
            },
            plugins: [
              {
                name: "rbenv-vars",
                git_url: 'git://github.com/sstephenson/rbenv-vars.git'
              },
              {
                name: 'rbenv-update',
                git_url: 'git://github.com/rkh/rbenv-update.git',
                revision: 'master'
              }
            ]
          }
        ]
      }
    }
  end
end
