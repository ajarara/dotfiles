#!/usr/bin/env sh


function myxcape {
    xcape -e 'Control_L=Escape;Control_R=Escape;Shift_R=parenleft;Shift_L=parenright' -t 250
}

function fixcape {
    
    echo "killing all xcape config"
    pkill xcape
    
    echo "giving xmodmap base configuration"
    xmodmap ~/.Xmodmapdefaults
    
    echo "calling xmodmap"
    xmodmap ~/.Xmodmap
    
    echo "calling xcape"
    myxcape
    
    echo "done!"
}
