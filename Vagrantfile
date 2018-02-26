Vagrant.configure('2') do |config|
  7.times do
    config.vm.network :private_network, type: :dhcp
  end

  Pathname.glob('*.json').sort.each do |template|
    name = template.basename('.json').to_s
    escaped_name = name.gsub(/[.]/, '_')

    config.vm.define "#{escaped_name}-virtualbox" do |c|
      c.vm.box = name

      c.vm.provider :virtualbox do |v|
        v.name = name
        v.gui = false
      end
    end
  end

  
end

