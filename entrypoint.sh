#!/bin/sh
set -eax

black --version
black --check --force-exclude '^.*\b(migrations)\b.*$' "$@"
