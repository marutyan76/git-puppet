class xylitol::gum {

    file { "process.yaml" :
        path    =>  "/var/tmp/process.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $operatingsystem ? {
            "Amazon"       =>  "puppet:///modules/xylitol/process/devlive_process.yaml",
        },
    }

    file { "tcp_check.yaml":
        path    =>  "/var/tmp/tcp_check.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $operatingsystem ? {
            "Amazon"       =>  "puppet:///modules/xylitol/tcp_check/devlive_tcp_check.yaml",
        },
    }

    file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $operatingsystem ? {
            "Amazon"      =>  "puppet:///modules/xylitol/web_scraping/devlive_web_scraping.yaml",
        },
    }
}
