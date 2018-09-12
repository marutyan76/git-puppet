class xylitol::gum {

    if $ec2_instance_type == "t2.micro" {
        file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/web_scraping/devlive_web_scraping.yaml",
        },
    }elsif $ec2_instance_type == "t2.small" {
        file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/web_scraping/devlive_demo_web_scraping.yaml",
        },
    }
}