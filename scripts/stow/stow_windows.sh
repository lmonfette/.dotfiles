#!/bin/bash

# prevent double inclusion
if [[ -n "${STOW_WINDOWS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
STOW_WINDOWS_FILE_INCLUDED=1
# prevent double inclusion

windows_stow() {
    echo "'windows_stow' not implemented."
}

windows_unstow() {
    echo "'windows_unstow' not implemented."
}
