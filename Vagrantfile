Vagrant.configure("2") do |config|

  # Definir configuración de cada máquina
  nodes = [
    { :name => "haproxy", :ip => "192.168.56.10", :memory => 512, :script => "haproxy.sh" },
    { :name => "web1", :ip => "192.168.56.11", :memory => 512, :script => "web.sh" },
    { :name => "web2", :ip => "192.168.56.12", :memory => 512, :script => "web.sh" }
  ]

  nodes.each do |node|
    config.vm.define node[:name] do |node_config|
      node_config.vm.box = "ubuntu/focal64"
      node_config.vm.network "private_network", ip: node[:ip]
      node_config.vm.provider "virtualbox" do |vb|
        vb.memory = node[:memory]
        vb.cpus = 1
      end
      node_config.vm.provision "shell", path: "provision/#{node[:script]}"
    end
  end
end
