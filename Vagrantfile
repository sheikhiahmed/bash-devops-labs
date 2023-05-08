Vagrant.configure("2") do |config|

  config.vm.define "ubuntu-devops" do |ubuntu|
    ubuntu.vm.box = "ubuntu/jammy64"
    ubuntu.vm.hostname = "ubuntu-devops"
    ubuntu.vm.network "private_network", ip: "192.168.56.21"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
      vb.cpus = 1
    end
  end
  config.vm.define "centos-devops" do |centos|
    centos.vm.box = "centos/7"
    centos.vm.hostname = "centos-devops"
    centos.vm.network "private_network",ip:"192.168.56.20"
    centos.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end
end


