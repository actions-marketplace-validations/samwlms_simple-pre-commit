#!/bin/sh
set -eax

pre-commit install --install-hooks
pre-commit run --all-files

# grab the info stored in the pre-commit-config file
#prefix="language_version:"
#language=$(grep $prefix .pre-commit-config.yaml | sed -e 's/^[ \t]*//')
#output=${language#"$prefix"}




#black $@
