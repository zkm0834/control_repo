class minecraft (
  $url = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.6.4/minecraft_server.1.6.4.jar'
  $install_dir = '/opt/minecraft'
){
  file {$install_dir:
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
    content => epp{'minecraft/minecraft.service'},{
      install_dir => $install_dir,
    }}
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }  

}  
