#!/bin/bash

user=`whoami`
root="root"
opt=$1

if [[ -z ${opt} || ${opt} != "off" ]]
then
    echo "auth for "${user}
    sudo chown -R ${user} /usr/local/include
    sudo chown -R ${user} /usr/local/lib
    sudo chown -R ${user} /usr/local/share/man/man8
else 
    echo "recycle auth from "${user}
    sudo chown -R ${root} /usr/local/include
    sudo chown -R ${root} /usr/local/lib
    sudo chown -R ${root} /usr/local/share/man/man8
fi