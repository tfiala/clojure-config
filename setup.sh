#!/bin/sh

# Grab this script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ensure .lein path exists
DOTLEIN_PATH="$HOME/.lein"
mkdir -p "$DOTLEIN_PATH"

# Ensure we have a profiles.clj in the .lein dir
if [ ! -f "$DOTLEIN_PATH/profiles.clj" ]; then
    ln -s "$SCRIPT_DIR/profiles.clj" "$DOTLEIN_PATH/"
fi
