#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
prefix='language_version:'
language_version=$(grep 'language_version:' .pre-commit-config.yaml)
output=${language_version#"$prefix"}

echo $output


black $@
