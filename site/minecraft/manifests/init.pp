# Class: minecraft
# Creating minecraft module
#
class minecraft {
    # parameters
    $url = 'https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar'
    $install_dir = '/opt/minecraft'
    # resources
    file { $install_dir:
        ensure => directory,
    }
    file { "${install_dir}/server.jar":
        ensure => file,
        source => $url,
        before => Service['minecraft'],
    }
    package { 'java':
        ensure => present,
    }
    file { "${install_dir}/eula.txt":
        ensure  => file,
        content => 'eula=true',
    }
    file { '/etc/systemd/system/minecraft.service':
        ensure => file,
        source => 'puppet:///modules/minecraft/minecraft.service',
    }
    service { 'minecraft':
        enable => true,
        ensure => running,
        require => [Package['java'], File["${install_dir}/eula.txt"], File['/etc/systemd/system/minecraft.service']]
    }
}