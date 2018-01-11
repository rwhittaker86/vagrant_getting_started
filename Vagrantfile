Vagrant.configure("2") do | config |
	config.vm.box = "ubuntu/trusty64"
	config.vm.provision :shell, path: "bootstrap.sh"
	config.vm.network :forwarded_port, guest: 80, host: 4567
	
	# clean up including git commit/push on halt/suspend/destroy
	
	#requires installing vagrant-triggers fount at (https://github.com/emyl/vagrant-triggers)
	config.trigger.before :halt do
		info "performing Backup"
		run_remote "bash /vagrant/cleanup.sh"
	end
	
	config.trigger.before :suspend, :stdout =>true do
		info "performing Backup"
		run_remote "bash /vagrant/cleanup.sh"
	end
	
	config.trigger.before :destroy do
		info "preforming Backup"
		run_remote "bash /vagrant/cleanup.sh"
	end
end