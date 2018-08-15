filebucket { "main":
   server => "git-puppet.ma.local",
   path => false,
}

node webdav6 {
    include httpd
}