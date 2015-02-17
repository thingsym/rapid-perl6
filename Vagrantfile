# -*- mode: ruby -*-
# vi: set ft=ruby :

## Vagrant Settings ##

vm_box                = 'ubuntu/trusty64'
vm_ip                 = '192.168.129.20'
vm_hostname           = 'perl6.local'

## That's all, stop setting. ##

provision = <<-EOT
    apt-get -y install git
    sudo -u vagrant -i -- chmod 755 /vagrant/perl6.sh
    sudo -u vagrant -i -- /vagrant/perl6.sh
EOT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = vm_box
  config.vm.network :private_network, ip: vm_ip
  config.vm.hostname = vm_hostname
  config.ssh.forward_agent = true

  if Vagrant.has_plugin?("vagrant-hostsupdater")
    config.hostsupdater.remove_on_suspend = true
  end

  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize [
      "modifyvm", :id,
      "--memory", "1024",
      '--natdnshostresolver1', 'on',
      '--natdnsproxy1', 'on',
    ]
  end

  config.vm.provision :shell, :inline => provision

end