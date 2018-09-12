class xylitol::gum_process {

    if $hostname == "test10" {
    file { "process.yaml" :
        path    =>  "/var/tmp/process.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/process/devlive_process.yaml",
        }
    }elsif $hostname == "oreo11" {
        file { "process.yaml" :
        path    =>  "/var/tmp/process.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/process/devlive_process.yaml",
        }
    }
}