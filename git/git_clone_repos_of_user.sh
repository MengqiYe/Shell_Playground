#!/bin/bash

USER_NAME=$1

curl https://api.github.com/users/$USER_NAME/repos | grep -e 'git_url*' | cut -d \" -f 4 | xargs -p 4 -L1 git clone

