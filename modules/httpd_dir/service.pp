class httpd::service {
    service { "httpd":
        ensure     => running,
        enable     => true,
        hasrestart => true,
        # pattern    => 'httpd',
        subscribe => File['/etc/httpd/conf.d/webdav.conf'],
    }
}