#!/bin/bash

clear

char="#"
text="
#####  #   #  #####  #####   ###   #   #   ###   
#      #   #    #    #      #   #  ## ##  #   #  
####   #   #    #    ####   #####  # # #  #   #
#      #   #    #    #      #   #  #   #  #   #
#####  #####    #    #####  #   #  #   #   ###   
"

# Substitui '#' pelo caractere definido em `char`
transformed_text=$(echo "$text" | sed "s/#/$char/g")

cat_frames=(
    "
    /\\_/\\  
   ( o.o )  
   > 🤍 <    
    "
    "
    /\\_/\\  
   ( _._ )  
    >❤️<    
    "
)

type_text() {
    local text="$1"
    local delay="${2:-0.1}"
    local i=0
    while [ $i -lt ${#text} ]; do
        echo -n "${text:$i:1}"
        i=$((i + 1))
        sleep "$delay"
    done
    echo
}

cat_animation() {
    while true; do
        for frame in "${cat_frames[@]}"; do
            clear
            echo "$frame"
            sleep 0.5
        done
    done
}

# Exibe o texto transformado
type_text "$transformed_text" 0.05
sleep 1
cat_animation
