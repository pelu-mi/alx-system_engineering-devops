# Script to Fix failed requests on Nginx server

exec { 'nginx-server-fix'
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/bin:/usr/local/bin'
}

-> exec { 'restart-nginx'
  command => 'nginx restart',
  path    => '/etc/init.d'
}
