Vagrant.configure(2) do |config|
  config.vm.define "ansiblecontroller" do |ansible| 
    ansible.vm.box = "ubuntu/trusty64"
    ansible.vm.hostname = "ansible"
    ansible.vm.network "private_network", ip: "192.168.0.250"
    ansible.vm.provider "virtualbox" do |avb|
      avb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    ansible.vm.provision "shell", path: "ansibleinstall.sh"
  end
end