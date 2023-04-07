# Script to Fix failed requests on Nginx server

exec { 'nginx-server-fix'
  command => 'sed -i "s/15/4096/" /etc/default/nginx; sudo service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin']
}
