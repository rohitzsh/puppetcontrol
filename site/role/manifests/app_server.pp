# Class: role::app_server
#
#
class role::app_server {
	# resources
	include profile::web
	include profile::base
	include profile::app
}