file { '/tmp/test03.txt':
    ensure => file,
    owner  => "ec2-user",
    group  => "ec2-user",
    mode   => "640",
    source => "/etc/httpd/conf/httpd.conf",
}