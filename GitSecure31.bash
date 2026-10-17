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
cd $MCF_HOME
for aprojdir in \
	server.markhome.ycf.v3_1.secure.securepub \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.securecustfx \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.secureramtest
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
