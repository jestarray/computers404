#!/bin/bash

# Remove generated .html files that have corresponding .html.pm
# source files, leaving the Pollen source files intact.

for html in *.html; do
    # Handle the case where no .html files exist
    [ -e "$html" ] || continue

    if [ -e "$html.pm" ]; then
        echo "Deleting: $html"
        rm -- "$html"
    fi
done