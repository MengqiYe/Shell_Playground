#!/bin/bash

# list all the configured repositories on apt based system
sudo grep -rhE ^deb /etc/apt/sources.list* 

# 
grep -rhE ^self._reward ./debug*.log
