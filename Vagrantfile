Vagrant.configure("2") do |config|
  config.vm.box       = "jkim/fedora27-virtualbox"
  config.vm.hostname = "jkim-fedora27"
  config.ssh.username = "vagrant"

  config.vm.synced_folder "salt/", "/srv/salt/"
  # config.vm.network :forwarded_port, guest: 8500, host: 8500

  ## Use all the defaults:
  config.vm.provision :salt do |salt|
    salt.temp_config_dir = "/home/ubuntu"
    salt.masterless      = true
    salt.run_highstate   = true
    salt.colorize        = true
    salt.verbose         = true
    salt.log_level       = "info"
  end
end