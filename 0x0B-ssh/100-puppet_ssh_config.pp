# Configure ssh client
file { '~/.ssh/config':
  ensure  => file,
  content => "Host 54.146.83.42
	  User ubuntu
	  IdentityFile ~/.ssh/school
	  IndentityOnly yes"
}
