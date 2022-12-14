# Configure ssh client
file { '/etc/ssh/ssh_config':
  ensure  => file,
  content => "Host 54.146.83.42
	  User ubuntu
	  IdentityFile ~/.ssh/school
	  IdentityOnly yes"
}
