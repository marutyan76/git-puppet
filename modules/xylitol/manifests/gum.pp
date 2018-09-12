class xylitol::gum {

    file { "process.yaml" :
        path    =>  "/tmp/oreo/conf.d/process.yaml",
        owner   =>  ec2-user,
        group   =>  ec2-user,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"       =>  "puppet::///modules/xylitol/process/devlive_process.yaml",
        },
    }

    file { "tcp_check.yaml":
        path    =>  "/tmp/oreo/agent/conf.d/tcp_check.yaml",
        owner   =>  ec2-user,
        group   =>  ec2-user,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"       =>  "puppet::///modules/xylitol/tcp_check/devlive_tcp_check.yaml",
        },
    }

    file { "web_scraping.yaml":
        path    =>  "/tmp/oreo/agent/conf.d/web_scraping.yaml",
        owner   =>  ec2-user,
        group   =>  ec2-user,
        mode    =>  644,
        source  =>  $system_role ? {
            "AWS_test"      =>  "puppet::///modules/xylitol/web_scraping/devlive_web_scraping.yaml",
            "AWS_oreo"      =>  "puppet::///modules/xylitol/web_scraping/devlive_demo_web_scraping.yaml",
        },
    }
}