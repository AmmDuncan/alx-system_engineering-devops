# Create a file in tmp folder with certain properties
file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  path    => '/tmp/school',
  content => 'I love Puppet'
}
