filebucket { "main":
   server => "puppetserver.ma.local",
   path => false,
}

Package { allow_virtual => false }

Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }

File { backup => "main" }


node default inherits dev_sample {
   notify { "woof": message => "Did you define a node? This is the default node message." }
   include test_page
}

node dev_sample {
   include xylitol
}