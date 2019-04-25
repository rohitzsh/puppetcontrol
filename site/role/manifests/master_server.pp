# Class: role::master_server
#
#
class role::master_server {
	# resources
	include profile::base
	include profile::agent_nodes
}