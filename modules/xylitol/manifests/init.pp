class xylitol {
    #import datadog

    case $ec2_instance_type {
        't2.micro' : {include xylitol::gum_process}
        't2.micro' : {include xylitol::gum_tcp_chcek}
        't2.micro','t2.small' : {include xylitol::gum_web_scraping}
    }
}
