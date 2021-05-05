class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcSZr/FtYllGGJNPJMjqGKQb1t0bAAgiIMiK5rMWjnOJFIAs/Fb8jwCgEjwJeAb/N8GjfqTFMousvhXxwoOkQ07NuEwzwaYfX4fBcJxbg/uNy4SSBB23CLmwv4eRqIwugUTWLGxW78mtis//BeLraXFqMXxwSeU3HVFaoa/UhfqqjHY19g54HuRQh0YPoSeI1m4q6ZHNwk0qltvd0V7lWnxksyc5/nIUj+zGxJ2NfPShii4oUIojhTIIVqweVfeS6Lf+VeKJhIiZ0cjFG7lnbCCU/8o/XXPaAQJFKLDCR5ebArTyxLhCOwVNTsJ5vU13k9brXmVAK2hZ/4fOMjqlGD',
	}  
}
