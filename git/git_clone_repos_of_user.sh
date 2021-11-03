#!/bin/bash

USER_NAME=$1
REPO_COUNT=$(curl -silent https://api.github.com/users/$USER_NAME | grep -e "public_repos" | cut -d \" -f 3 | cut -d \: -f 2 | cut -d \, -f 1)
PER_PAGE=32

(( PAGE_COUNT=(REPO_COUNT + PER_PAGE - 1)/PER_PAGE ));

for i in `seq 1 $PAGE_COUNT`;
do
    curl -silent https://api.github.com/users/$USER_NAME/repos?page=$i \
        | grep -e 'html_url' \
        | cut -d \" -f 4 \
        | xargs -I '{}' -P 4 git clone '{}' --depth=1


done





# $RET | grep -e 'git_url*' | cut -d \" -f 4 | sed 's/git:\/\//https:\/\//' | xargs -I '{}' -P 4 git clone '{}' --depth=1
