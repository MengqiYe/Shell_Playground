#!/bin/bash

yes "$(seq 1 20)" | while read digit; do echo digit; sleep 1; done
