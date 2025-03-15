node default{
  $packages= ['nginx','mysql-server']
  
  package{$packages:
    ensure => installed,
  }

  exec{'Conditions':
    command => '/bin/echo "Nginx is installed" > /tmp/software.txt',
    onlyif  => '/bin/which nginx',
  }
  
}