# Puppet script to replace 'phpp' with 'php'

exec { 'wp-server-fix':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin']
}
