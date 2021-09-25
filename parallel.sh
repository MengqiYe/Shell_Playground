#!/bin/bash

ls *.sh | xargs -P 4 -n 1 echo
