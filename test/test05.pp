package { 'httpd24':
    ensure => installed,
}

service { "httpd":
    ensure     => running,
    enable     => true,
    hasrestart => true,
    subscribe => [
    Package["httpd"],
    File['/etc/httpd/conf/httpd.conf'],
    ]
}