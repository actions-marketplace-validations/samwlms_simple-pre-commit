#!/bin/sh
set -eax

black --version
ls -a
black $@
