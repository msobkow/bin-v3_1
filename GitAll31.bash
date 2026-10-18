#!/bin/bash
if [ "$1" != "" ]; then
	export CLIARG1="$1"
else
	unset CLIARG1
fi
if [ "$2" != "" ]; then
	export CLIARG2="$2"
else
	unset CLIARG2
fi
if [ "$3" != "" ]; then
	export CLIARG3="$3"
else
	unset CLIARG3
fi
if [ "$4" != "" ]; then
	export CLIARG4="$4"
else
	unset CLIARG4
fi
cd $YCF_HOME
for aprojdir in \
	bin-v3_1 \
	msobkow.github.io \
	server.markhome.ycf \
	server.markhome.ycf.v3_1.secure \
	server.markhome.ycf.v3_1.intnet \
	server.markhome.ycf.v3_1.busmodel
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
