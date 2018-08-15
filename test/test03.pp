service { "httpd24":
    ensure     => running,
    enable     => true,
    hasrestart => true,
    subscribe => [
        Package['httpd24'],
        File['/etc/httpd/conf/httpd.conf'],
    ]
} 