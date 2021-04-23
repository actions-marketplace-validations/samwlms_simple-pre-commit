#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
revision=$(grep -A3 'repos:' .pre-commit-config.yaml | tail -n1)
revision=${db//*rev: /}
echo "$revision"

black $@
