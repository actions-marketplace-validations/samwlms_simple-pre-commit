#!/bin/sh
set -eax

black --version
echo ls
black $@
