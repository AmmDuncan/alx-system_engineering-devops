# Create a file in tmp folder with certain properties
file { '/tmp/school':
  path  => '/tmp/school'
  mode  => '0744'
  owner  => 'www-data'
  group    => 'www-data'
  ensure    => file
  content    => 'I love Puppet'
}
