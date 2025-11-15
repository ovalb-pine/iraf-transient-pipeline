#!/usr/bin/env bash
# Usage: ./run_iraf_cl.sh my_commands.cl
CLFILE=${1:-iraf_cmds.cl}
cl < "$CLFILE" > iraf_stdout.txt 2>&1
echo "Saved IRAF stdout to iraf_stdout.txt"
