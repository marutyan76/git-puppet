class xylitol::gum_process {

    if $ec2_instance_type == "t2.micro" {
    file { "process.yaml" :
        path    =>  "/var/tmp/process.yaml",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet:///modules/xylitol/process/devlive_process.yaml",
        },
    }
}