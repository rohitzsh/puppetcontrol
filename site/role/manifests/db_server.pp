# Class: role::db_server
#
#
class role::db_server {
	# resources
	include profile::base
	include profile::db
}