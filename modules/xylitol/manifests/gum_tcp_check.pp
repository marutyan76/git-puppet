class xylitol::gum_tcp_check {

    if $ec2_instance_type == "t2.micro" {
    file { "tcp_check.yaml":
        path    =>  "/var/tmp/tcp_check.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/tcp_check/devlive_tcp_check.yaml",
        },
    }
}