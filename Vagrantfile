# -*- mode: ruby -*-
# vi: set ft=ruby :

`git submodule init`
`git submodule update`

if File.file? (File.expand_path '~/vagrant_setup.rb')
  require '~/vagrant_setup.rb'
else 
  require 'ostruct'
  USER_CONFIG = OpenStruct.new(data_dir: (File.expand_path '~'))
end

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
  end

  if USER_CONFIG.data_dir
    config.vm.synced_folder USER_CONFIG.data_dir, "/host_folder"
  end 
 
  config.vm.network :forwarded_port, guest: 3000, host: 3000
 
  config.vm.provision :shell, :inline => 'apt-get update'
 
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
    puppet.module_path = 'modules'
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "rvm.pp"
    puppet.module_path = 'modules'
  end
end
