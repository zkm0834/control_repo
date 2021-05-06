class minecraft {
  $url = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.6.4/minecraft_server.1.6.4.jar'
  $install_dir = '/opt/minecraft'
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {"${install_dir}/minecraft_server.jar"}:
    ensure => file,
    source => $url,
    before => Service['minecraft'],
  }
  package {'java':
    ensure => present,
  }  
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }  

}  
