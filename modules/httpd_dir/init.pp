class httpd {
    include httpd::install
    include httpd::config
    include httpd::webdav
    include httpd::service
    Class['httpd::install']
    -> Class['httpd::config']
    -> Class['httpd::webdav']
    -> Class['httpd::service']
}