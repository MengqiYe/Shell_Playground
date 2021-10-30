#!/bin/bash



CNTX={orgs}; NAME={google-research-datasets}; PAGE=1
curl "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100" | grep -e 'git_url*' | cut -d \" -f 4 | xargs -p 4 -L1 git clone
