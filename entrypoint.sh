#!/bin/sh
set -eax

# create/ reinitialise git repo
# git init

# uninstall existing hooks
# pre-commit uninstall

# install hooks based on current configuration file
pre-commit install --install-hooks -f

# run pre-commit
pre-commit run --all-files --verbose

# sanity check for comparison
black --check .




# grab the info stored in the pre-commit-config file
#prefix="language_version:"
#language=$(grep $prefix .pre-commit-config.yaml | sed -e 's/^[ \t]*//')
#output=${language#"$prefix"}
