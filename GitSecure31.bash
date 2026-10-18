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
	server.markhome.ycf/ycf-securepub \
	server.markhome.ycf/ycf-secureprot \
	server.markhome.ycf/ycf-secure \
	server.markhome.ycf/ycf-securejpa \
	server.markhome.ycf/ycf-securejpatest \
	server.markhome.ycf/ycf-securesaxloader \
	server.markhome.ycf/ycf-securejavafx \
	server.markhome.ycf/ycf-securecustfx \
	server.markhome.ycf/ycf-secureram \
	server.markhome.ycf/ycf-secureramtest
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
