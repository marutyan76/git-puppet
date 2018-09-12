class xylitol {
    #import datadog

    case $ec2_instance_type {
        't2.micro','t2.small' : {include xylitol::gum}
    }
}
