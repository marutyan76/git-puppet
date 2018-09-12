class xylitol {
    #import datadog

    case $system_role {
        'AWS_test','AWS_oreo' : {include xylitol::gum}
    }
}