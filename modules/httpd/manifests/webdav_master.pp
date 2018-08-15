class httpd::webdav_master {
    package { 'httpd24': ensure => installed }

    file { "webdav.conf" :
        path    =>  "/etc/httpd/conf.d/webdav.conf",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        content  =>  "puppet:///modules/httpd/files/webdav_dir/webdav_file.conf",
    }

    service { httpd:
        ensure  =>running,
        hasstatus   =>  true,
        subscribe   =>  File["webdav.conf"],
    }
}