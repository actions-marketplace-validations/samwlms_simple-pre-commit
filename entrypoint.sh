#!/bin/sh
set -eax

# install hooks based on current configuration file
pre-commit install --install-hooks -f

# run pre-commit
pre-commit run --all-files --verbose

# sanity check for comparison
black --check .
