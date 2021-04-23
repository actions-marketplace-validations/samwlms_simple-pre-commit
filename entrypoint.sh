#!/bin/sh
set -eax

black --version

# grab the info stored in the pre-commit-config file
language_version=$(grep 'language_version:' .pre-commit-config.yaml) | tr -d 'language_version:'

echo $language_version


black $@
