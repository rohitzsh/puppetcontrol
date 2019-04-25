# Class: profile:base
#
#
class profile::base {
	# resources
	user { 'admin':
	  ensure  => present,
	  comment => 'Admin',
	  home    => '/home/admin',
	  #shell  => '/bin/bash',
	  #uid    => '501',
	  #gid    => '20'
	}
}