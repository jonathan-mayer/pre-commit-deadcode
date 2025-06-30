#!/bin/bash

if ! command -v deadcode &>/dev/null; then
    go install golang.org/x/tools/cmd/deadcode@latest
fi

output=$(deadcode ./...)
if [[ -n "$output" ]]; then
    echo "$output"
    exit 1
fi
