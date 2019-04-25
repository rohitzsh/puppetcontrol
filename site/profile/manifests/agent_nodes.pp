# Class: profile::agent_nodes
#
#
class profile::agent_nodes {
	# resources
	include dockeragent
	dockeragent::node {'web.puppet.vm':}
	dockeragent::node {'db.puppet.vm':}
}