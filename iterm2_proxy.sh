#!bin/bash

opt=$1

if [[ -z ${opt} || ${opt} != "off" ]]
then
    export http_proxy="http://127.0.0.1:8001"
    export https_proxy=$http_proxy
else 
    echo "unset proxy..."
    unset http_proxy https_proxy
fi
