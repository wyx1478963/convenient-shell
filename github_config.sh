#!bin/bash
username=$1
email=$2
git config --local user.name ${username} && git config --local user.email ${email}

