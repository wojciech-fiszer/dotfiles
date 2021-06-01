#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

backup () {
    file=$1
    if [ -f $file ]; then
        cp $file $file"_backup_$(date +'%Y_%m_%d_%H_%M_%S')"
    fi
}

backup ~/.zshrc
cp $SCRIPT_DIR/zsh/.zshrc ~/
