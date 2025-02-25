Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  # Máquina HAProxy
  config.vm.define "haproxy" do |haproxy|
    haproxy.vm.network "private_network", ip: "192.168.56.10"
    haproxy.vm.hostname = "haproxy"
    haproxy.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/site.yml"
    end
  end

  # Servidor Web 1
  config.vm.define "web1" do |web1|
    web1.vm.network "private_network", ip: "192.168.56.11"
    web1.vm.hostname = "web1"
    web1.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/site.yml"
    end
  end

  # Servidor Web 2
  config.vm.define "web2" do |web2|
    web2.vm.network "private_network", ip: "192.168.56.12"
    web2.vm.hostname = "web2"
    web2.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/site.yml"
    end
  end
end
