#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
revision=$(grep 'repos:' .pre-commit-config.yaml)
grep_hooks = $(grep 'hooks:' .pre-commit-config.yaml)
hooks_var=${revision//*hooks: /}

black $@
