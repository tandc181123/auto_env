#!/bin/bash

if [[ ! $(grep "cd_func()" ~/.bashrc) ]]; then
    cat "bashrc_settings.sh" >> ~/.bashrc
    echo "Successfully appended bashrc_settings.sh"
else
    echo "Already written."
fi

source ~/.bashrc