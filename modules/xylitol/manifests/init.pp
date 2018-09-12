class xylitol {
    #import datadog

    case $hostname {
        'test10' : {include xylitol::gum_process}
        'test10' : {include xylitol::gum_tcp_chcek}
        'test10','oreo11' : {include xylitol::gum_web_scraping}
    }
}
