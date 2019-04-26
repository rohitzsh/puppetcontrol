# Class: profile::ssh_server
#
#
class profile::ssh_server {
	# resources
	package { 'openssh-server':
		ensure => present,
	}

	service { 'sshd':
		enable => true,
		ensure => running,
	}

	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMMNPQCFmQo4xZSbMlMUKLWuQTPyq9AgNCgL4NzCyMlh2fVX7MnEu6NUsmwxbcqB59gtDFdRt4IOZvaTftQeLoSORtDYxSKXnzC7C+j/N08/oLnX4Bo6rn2KuftBSPOVYAmL40ExlN2oU3iIUf+SkGU/VJZhjWZ7635E5MVUPbeNO0i7i5aVn2yXFdpZtRNAEeqxzPlOdM7nNd94XIvugmD+0UyPAX/UfpOEi6yYMB/4571l01j0gupVAPq5h/XA3CJHGYacKdY/5RNCuc2ywz480oxC05CwdGjP93BSarlZdIKDPlepui7h7Y5KNVltvxac8uwFjYvmcQqa3Ue0of',
	}

}