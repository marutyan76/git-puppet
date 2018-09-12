class xylitol::gum_tcp_check {

    if $hostname == "test10" {
    file { "tcp_check.yaml":
        path    =>  "/var/tmp/tcp_check.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/tcp_check/devlive_tcp_check.yaml",
        }
    }
}