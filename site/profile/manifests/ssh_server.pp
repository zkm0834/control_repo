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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBKl6H7L6f3qFEg8+MuKzvr5Ec0TZURt0CobjE4SaQtGI1do2vi5cpYTFYsQV64XQ/XAsKLR7ni/Tp7IdoZN+EiSY1eFph4Bm09wU5z3521tLlchmf8dGZHl5hynC67gh5aUpkmmdI9xwEGlLyfSSjJeeouynl86f+C+B2SZ9kipzPXaonwBPmVU3KkAS3pV5eZPDE/nUS3en9Lsx0EOtNZk9TkE4WaE39LBuVi77J5r0z7dz5VXXl+4Epskib6qbD1BIb6fW9X19fZR6lP99Y2v1PdHefc45t+Uma5rX7mV4Tdokt5OOzLd4LToWDJ2bVVHk6ojNqQhxVlblw+P4R',
	}  
}
