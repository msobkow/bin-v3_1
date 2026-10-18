#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42-alpha13-ebf-202610172230"
fi
clear
#$INIT_BUILD_RESET
$INIT_BUILD
WipeFractalSecure31.bash
ManufactureSecure31Java.bash $CLIARGS
CleanSecure31.bash
clear
time BuildSecure31.bash $CLIARGS
