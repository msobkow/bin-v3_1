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
	server.markhome.mcf \
	server.markhome.mcf.v3_1 \
	\
	server.markhome.mcf.v3_1.cflib \
	server.markhome.mcf.v3_1.cflib.dbutil \
	server.markhome.mcf.v3_1.cflib.dbtest \
	server.markhome.mcf.v3_1.cflib.javafx \
	\
	server.markhome.mcf.v3_1.cfsec.cfsec \
	server.markhome.mcf.v3_1.cfsec.cfsecbuff \
	server.markhome.mcf.v3_1.cfsec.cfsecjpa \
	server.markhome.mcf.v3_1.cfsec.cfsecjpatest \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxloader \
	server.markhome.mcf.v3_1.cfsec.cfsecjavafx \
	server.markhome.mcf.v3_1.cfsec.cfseccustfx \
	server.markhome.mcf.v3_1.cfsec.cfsecram \
	server.markhome.mcf.v3_1.cfsec.cfsecramtest \
	\
	server.markhome.mcf.v3_1.cfint.cfint \
	server.markhome.mcf.v3_1.cfint.cfintbuff \
	server.markhome.mcf.v3_1.cfint.cfintjpa \
	server.markhome.mcf.v3_1.cfint.cfintjpatest \
	server.markhome.mcf.v3_1.cfint.cfintsaxloader \
	server.markhome.mcf.v3_1.cfint.cfintjavafx \
	server.markhome.mcf.v3_1.cfint.cfintcustfx \
	server.markhome.mcf.v3_1.cfint.cfintram \
	server.markhome.mcf.v3_1.cfint.cfintramtest \
	\
	server.markhome.mcf.v3_1.cfbam.cfbam \
	server.markhome.mcf.v3_1.cfbam.cfbambuff \
	server.markhome.mcf.v3_1.cfbam.cfbamjpa \
	server.markhome.mcf.v3_1.cfbam.cfbamjpatest \
	server.markhome.mcf.v3_1.cfbam.cfbamsaxloader \
	server.markhome.mcf.v3_1.cfbam.cfbamjavafx \
	server.markhome.mcf.v3_1.cfbam.cfbamcustfx \
	server.markhome.mcf.v3_1.cfbam.cfbamram \
	server.markhome.mcf.v3_1.cfbam.cfbamramtest
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
