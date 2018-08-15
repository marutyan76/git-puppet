package { 'httpd24':
    ensure => installed,
}

service { "httpd":
    ensure     => running,
    enable     => true,
}