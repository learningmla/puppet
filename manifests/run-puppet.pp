# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

file { '/home/vagrant/hello-file.txt':
  source => '/tmp/hello.txt',
  mode   => '0755',
}

cron { 'run-puppet':
  command => 'vi +'':w ++ff=unix'' +'':q'' "/usr/local/bin/run-puppet"; bash /usr/local/bin/run-puppet > /home/vagrant/run-puppet.log 2>&1',
  hour    => '*',
  minute  => '*/15',
}
