# Class: minecraft
# Creating minecraft module
#
class minecraft {
    # resources
    file { '/opt/minecraft':
        ensure => directory,
    }
    file { '/opt/minecraft/server.jar':
        ensure => file,
        source => 'https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar'
        before => Service['minecraft'],
    }
    package { 'java':
        ensure => present,
    }
    file { '/opt/minecraft/eula.txt':
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
        require => [Package['java'], File['/opt/minecraft/eula.txt'], File['/etc/systemd/system/minecraft.service'] ]
    }
}