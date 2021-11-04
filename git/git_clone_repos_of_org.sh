#!/bin/bash

ORG_NAME=$1
REPO_COUNT=$(curl -silent https://api.github.com/orgs/$ORG_NAME | grep -e "public_repos" | cut -d \" -f 3 | cut -d \: -f 2 | cut -d \, -f 1)
PER_PAGE=32

(( PAGE_COUNT=(REPO_COUNT + PER_PAGE - 1)/PER_PAGE ));

for i in `seq 1 $PAGE_COUNT`;
do
      # | grep -e 'html_url' \
    curl -silent https://api.github.com/orgs/$ORG_NAME/repos?page=$i \
        | grep -e 'git_url*' | cut -d \" -f 4 | sed 's/git:\/\//https:\/\//' \
        | cut -d \" -f 4 \
        | xargs -I '{}' -P 4 git clone '{}' --depth=1


done

