#!/bin/dash
#http://unix.stackexchange.com/questions/204234/run-commands-without-terminal
set -x
COMMAND=$( zenity --entry --text="Orden:" )

/bin/sh -c "$COMMAND" &
