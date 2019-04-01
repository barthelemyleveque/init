rm -rf ~/goinfre/vagrant
mkdir /Volumes/Storage/goinfre/bleveque/vagrant
echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre/bleveque/vagrant' >> ~/.zshrc
cd ~/goinfre/vagrant
echo 'Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
    config.vm.synced_folder ".", "/git"
end' >> VagrantFile
vagrant plugin install vagrant-vbguest
vagrant up
vagrant vbguest
@echo 'Vagrant Up, please run : vagrant ssh'
