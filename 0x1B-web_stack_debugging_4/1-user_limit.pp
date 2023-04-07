# Puppet script to change OS config, allowing user to access files without error

exec { 'fix-holberton-user':
  command => 'sed -i "s/holberton/foo" /etc/security/limits.conf',
  path    => '/usr/bin/env'
}
