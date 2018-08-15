package { 'httpd24':
    ensure => installed,
}
->
file {'/etc/httpd/conf/httpd.conf':
    ensure => file,
    source  => "/tmp/httpd.conf",
    require => Package['httpd24'],
}
->
service { "httpd":
    ensure     => running,
    enable     => true,
    hasrestart => true,
    subscribe => File['/etc/httpd/conf/httpd.conf'],
}