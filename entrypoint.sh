#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
revision=$(grep 'repos:' .pre-commit-config.yaml)
revision=${db//*rev: /}

black $@
