node default{
    file  {'/root/README':
        ensure  => file,
        content => 'this is a readme file',
        owner   => 'root',
    }
}

node 'master.puppet.vm'{
	include role::master_server
}