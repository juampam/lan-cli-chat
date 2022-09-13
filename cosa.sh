 #!/bin/bash
    # term_size3 - Dynamically display terminal window size
    #              with text centering

    redraw() {
        local str width height length
        
        width=$(tput cols)
        height=$(tput lines)
        str="Width = $width Height = $height"
        length=${#str}
        clear
        tput cup $((height))
        ./app.sh
    }

    trap redraw WINCH

    redraw
    while true; do
        :
    done
