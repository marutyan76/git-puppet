class xylitol {
    #import datadog

    case $ec2_instance_type {
        't2.micro' : {include xylitol::gum}
    }
}
