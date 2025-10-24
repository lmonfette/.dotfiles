#!/bin/bash

# prevent double inclusion
if [[ -n "${DEFINES_FILE_INCLUDED:-}" ]]; then
    return 0
fi
DEFINES_FILE_INCLUDED=1
# prevent double inclusion

APPS_DIR=~/Desktop/apps/
