VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos-6.5-x86_64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-nocm.box"

  config.vm.hostname = "11g.example.com"

  config.vm.network :forwarded_port, guest: 1158, host: 1158
  config.vm.network :forwarded_port, guest: 1521, host: 1521

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.synced_folder "~/Downloads/database", "/database", :mount_options => ["dmode=777","fmode=777"]

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "oracle-11g.yml"
  end

end