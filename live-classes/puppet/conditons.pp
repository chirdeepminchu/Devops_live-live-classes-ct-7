#onlyif -- keyword to define Conditions

node default{
  exec{'Conditions':
    command => '/bin/echo "Nginx is installed" > /tmp/software.txt',
    onlyif  => '/bin/which nginx',
  }
}