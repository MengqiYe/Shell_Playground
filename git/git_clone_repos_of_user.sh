#!/bin/bash

USER_NAME=$1

curl https://api.github.com/users/$USER_NAME/repos | grep -e 'git_url*' | cut -d \" -f 4 | grep -e 'git_url*' | cut -d " -f 4 | sed 's/git:\/\//https:\/\//' | xargs -I '{}' -P 4 git clone '{}'
