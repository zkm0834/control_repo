class minecraft {
  file { '/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.6.4/minecraft_server.1.6.4.jar',
  }
  
  package {'java':
    ensure => present,
  }  
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service { 'minecraft':
    ensure => running,
    enabled => true,
    require => [Package['java'],
  }  
}  
