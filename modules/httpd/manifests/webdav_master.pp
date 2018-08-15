class httpd::webdav_master {
#    package { 'httpd24': ensure => installed }

    file { "webdav.conf" :
        owner   => root,
        group   => root,
        mode    => 644,
        source  =>  "puppet:///etc/puppet/modules/httpd/webdav_dir/webdav_file.conf",
        path    =>  "/etc/httpd/conf.d/webdav.conf",
    }

    file { "httpd.conf" :
        path    =>  "/etc/httpd/conf/httpd.conf",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///etc/puppet/modules/httpd/webdav_dir/httpd_file.conf",
    }
}