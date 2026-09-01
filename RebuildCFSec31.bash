#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
clear
#$INIT_BUILD_RESET
$INIT_BUILD
WipeFractalCFSec31.bash
ManufactureCFSec31Java.bash $CLIARGS
CleanCFSec31.bash
clear
time BuildCFSec31.bash $CLIARGS
