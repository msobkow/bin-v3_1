#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42-alpha13-ebf-202610172230"
fi
#$INIT_BUILD_RESET
$INIT_BUILD
clear
WipeFractalAll31.bash
ManufactureSecure31Java.bash $CLIARGS
ManufactureIntNet31Java.bash $CLIARGS
ManufactureBusModel31Java.bash $CLIARGS
CleanAll31.bash
clear
time BuildAll31.bash $CLIARGS
