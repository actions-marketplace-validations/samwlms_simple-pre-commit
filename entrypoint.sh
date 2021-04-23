#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
echo ===== Grep testing ======
echo === test1 ===
revision=$(grep -A 10 'repos:' .pre-commit-config.yaml)
echo === test2 ===
grep_hooks=$(grep -A 10 'hooks:' .pre-commit-config.yaml)
echo === test3 ===
hooks_var=${revision//*hooks: /}

black $@
