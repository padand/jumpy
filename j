#!/bin/sh

jumpy_cfg=~/.config/jumpy
mkdir -p $jumpy_cfg

function j {
    if [[ -z $1 ]]; then
        # list links
        ls -l $jumpy_cfg
    else
        # acces link
        link=$jumpy_cfg/$1
        if [[ -L "$link" ]]; then
            # cd into the linked directory
            link_path=$(readlink -f $link)
            cd $link_path
        else
            echo "Invalid link "$link
        fi;
    fi;
}