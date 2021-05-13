VAGRANTFILE_API_VERSION = "2"

$info = <<-SCRIPT
  echo "------------------------------------------------------------------"
  echo "| Installation of Ubuntu 16.04 on n1,n2,n3,m1 has finished     |"
  echo "------------------------------------------------------------------"
  echo ""
  echo "Available provisioners to run"
  echo "1. Homework 1, ansible script that prings OS version"
  echo "   and creates file:"
  echo "   execute a command:"
  echo "   vagrant up m1 --provision --provision-with hw_01"
  echo " "

SCRIPT


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "n1" do |n1|
    n1.vm.box = "bento/ubuntu-16.04"
    n1.vm.hostname = "node1"
    n1.vm.network :private_network, ip: "172.16.94.11"
  end

  config.vm.define "n2" do |n2|
    n2.vm.box = "bento/ubuntu-16.04"
    n2.vm.hostname = "node2"
    n2.vm.network :private_network, ip: "172.16.94.12"
  end

  config.vm.define "n3" do |n2|
    n2.vm.box = "bento/ubuntu-16.04"
    n2.vm.hostname = "node3"
    n2.vm.network :private_network, ip: "172.16.94.13"
  end

  config.vm.define "m1" do |m1|
    m1.vm.box = "bento/ubuntu-16.04"
    m1.vm.hostname = "master1"
    m1.vm.network :private_network, ip: "172.16.94.100"

    config.vm.provision "hw_01", type: "shell", run: "never" do |shell|
      shell.path = 'provisioners/run_hw.sh'
      shell.privileged = false
      shell.args = ["hw_01"]
    end
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  
end
