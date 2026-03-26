#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
clear
WipeFractalCFAll31.bash
ManufactureCFSec31Java.bash $CLIARGS
ManufactureCFInt31Java.bash $CLIARGS
ManufactureCFBam31Java.bash $CLIARGS
CleanCFAll31.bash
clear
time BuildCFAll31.bash $CLIARGS
