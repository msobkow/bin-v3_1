#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
clear
WipeFractalCFSec31.bash
ManufactureCFSec31Java.bash $CLIARGS
CleanCFSec31.bash
clear
time BuildCFSec31.bash $CLIARGS
