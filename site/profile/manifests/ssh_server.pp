class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@ip-172-31-1-76.us-east-2.compute.internal':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLu3Y/4OYMPIt7r/Ef53HxAVc8vBtHAIoww4S96b4V5RngkK/Pvy24QinQKs1zcy5eBkj4NIeUV6eZuvgpa3WydJAtjLegqPTFNh0ilZT7oD6QNgoy13N8gGfnL5xbadZlFD9eALUiiZI4er6pmnVKtAU9EzhUmGMuTrz0nZFxyJkwSQ2/Xxh2ms8mo/iXHCcFe8Fjlwu5H86IZnj/MihXqMEZxyvxtVkh8jY4Jsm8/kCl2SunhmJ27EHT0LUBGq/BDNlvPHEAp6ScRp6KjJBvzPilJ6YHENiI4VxjAGjnY7mjGOCWlkNyxR1EdQCpO/UEMGX61bs+rxbk/uPXjKz5',
	}  
}

