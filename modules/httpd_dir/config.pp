class httpd::config {
    file {'/etc/httpd/conf/httpd.conf' :
        ensure => file,
        owner  => "root",
        group  => "root",
        mode   => "644",
        source => "/tmp/httpd.conf",
        require => Package['httpd'],
    }
}