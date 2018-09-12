class xylitol::gum {

    file { "process.yaml" :
        path    =>  "/var/tmp/process.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"       =>  "puppet::///modules/xylitol/process/devlive_process.yaml",
        },
    }

    file { "tcp_check.yaml":
        path    =>  "/var/tmp/conf.d/tcp_check.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"       =>  "puppet::///modules/xylitol/tcp_check/devlive_tcp_check.yaml",
        },
    }

    file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"      =>  "puppet::///modules/xylitol/web_scraping/devlive_web_scraping.yaml",
            "AWS_oreo"      =>  "puppet::///modules/xylitol/web_scraping/devlive_demo_web_scraping.yaml",
        },
    }
}