#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file

# the prefix (aka yaml key) to match to
prefix="language_version:"
# grab the line with pattern match for prefix var
language_version=$(grep $prefix .pre-commit-config.yaml)
# remove the leading whitespace
language_version=$language_version | sed -e 's/^[ \t]*//'
# trim prefix from line
language_version=${language_version#"$prefix"} 

echo "$language_version"


black $@
