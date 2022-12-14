#Kill program called killmenow
exec { 'pkill -f killmenow':
  command => '/bin/pkill -f killmenow'
}
