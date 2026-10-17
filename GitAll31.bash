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
	bin-v3_1 \
	msobkow.github.io \
	server.markhome.ycf \
	server.markhome.ycf.v3_1 \
	\
	server.markhome.ycf.v3_1.cflib \
	server.markhome.ycf.v3_1.cflib.dbutil \
	server.markhome.ycf.v3_1.cflib.dbtest \
	server.markhome.ycf.v3_1.cflib.javafx \
	\
	server.markhome.ycf.v3_1.secure.securepub \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.securecustfx \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.secureramtest \
	\
	server.markhome.ycf.v3_1.intnet.intnetpub \
	server.markhome.ycf.v3_1.intnet.intnetprot \
	server.markhome.ycf.v3_1.intnet.intnet \
	server.markhome.ycf.v3_1.intnet.intnetjpa \
	server.markhome.ycf.v3_1.intnet.intnetjpatest \
	server.markhome.ycf.v3_1.intnet.intnetsaxloader \
	server.markhome.ycf.v3_1.intnet.intnetjavafx \
	server.markhome.ycf.v3_1.intnet.intnetcustfx \
	server.markhome.ycf.v3_1.intnet.intnetram \
	server.markhome.ycf.v3_1.intnet.intnetramtest \
	\
	server.markhome.ycf.v3_1.busmodel.busmodelpub \
	server.markhome.ycf.v3_1.busmodel.busmodelprot \
	server.markhome.ycf.v3_1.busmodel.busmodel \
	server.markhome.ycf.v3_1.busmodel.busmodeljpa \
	server.markhome.ycf.v3_1.busmodel.busmodeljpatest \
	server.markhome.ycf.v3_1.busmodel.busmodelsaxloader \
	server.markhome.ycf.v3_1.busmodel.busmodeljavafx \
	server.markhome.ycf.v3_1.busmodel.busmodelcustfx \
	server.markhome.ycf.v3_1.busmodel.busmodelram \
	server.markhome.ycf.v3_1.busmodel.busmodelramtest
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
