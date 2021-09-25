#!/bin/bash

libs=$(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $1 | grep "^\w" | sort -u | column)
rlibs=$(apt-rdepends $1 | grep -v "^ ")

for lib in $rlibs; do
    apt download $lib
done
