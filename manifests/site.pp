filebucket { "main":
   server => "puppetserver.ma.local",
   path => false,
}

node default inherits dev_sample {
   notify { "woof": message => "Did you define a node? This is the default node message." }
   include test_page
}

node dev_sample {
   include xylitol
}

node /^test1/ {
        # クラス名/ディレクトリ名
        include xylitol
}

node /^oreo1/ {
        # クラス名/ディレクトリ名
        include xylitol
}