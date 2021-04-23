#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file

language=$(grep "language_version:" .pre-commit-config.yaml | sed -e 's/^[ \t]*//')
echo "$language"




black $@
