class httpd::config {
    file {'/etc/httpd/conf.d/webdav.conf' :
        ensure => file,
        owner  => "root",
        group  => "root",
        mode   => "644",
        source => "/tmp/webdav.conf",
        require => Package['httpd'],
    }
}