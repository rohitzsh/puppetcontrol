# Class: profile::minecraft
#
#
class profile::minecraft {
	# Resources based class declaration
	# Send argument to minecraft class parameter
	# declared in init.pp
	class { 'minecraft':
		# Argument
		install_dir => '/srv/minecraft',
	}
}