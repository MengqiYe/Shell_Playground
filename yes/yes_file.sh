#!/bin/bash

yes long line of meaningless text for file padding | head -50 > test.txt
ls -alh test.txt
wc test.txt
