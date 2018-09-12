class xylitol::gum_web_scraping {

    if $hostname == "test10" {
        file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/web_scraping/devlive_web_scraping.yaml",
        }
    }elsif $hostname == "oreo11" {
        file { "web_scraping.yaml":
        path    =>  "/var/tmp/web_scraping.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/web_scraping/devlive_demo_web_scraping.yaml",
        }
    }
}