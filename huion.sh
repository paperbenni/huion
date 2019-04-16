#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/paperbenni/bash/master/import.sh)

pb dialog/dialog.sh

(
command -v xrandr
command -v xinput
) &> /dev/null || exit 1

xrandr | grep ' connected'
