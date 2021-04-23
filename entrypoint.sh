#!/bin/sh
set -eax

black --version
ls
black $@
