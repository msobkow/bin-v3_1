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
	io.github.msobkow \
	io.github.msobkow.v3_1 \
	\
	io.github.msobkow.v3_1.cflib \
	io.github.msobkow.v3_1.cflib.dbutil \
	io.github.msobkow.v3_1.cflib.dbtest \
	io.github.msobkow.v3_1.cflib.javafx \
	\
	io.github.msobkow.v3_1.cfsec.cfsec \
	io.github.msobkow.v3_1.cfsec.cfsecbuff \
	io.github.msobkow.v3_1.cfsec.cfsecjpa \
	io.github.msobkow.v3_1.cfsec.cfsecjpatest \
	io.github.msobkow.v3_1.cfsec.cfsecsaxloader \
	io.github.msobkow.v3_1.cfsec.cfsecjavafx \
	io.github.msobkow.v3_1.cfsec.cfseccustfx \
	io.github.msobkow.v3_1.cfsec.cfsecram \
	io.github.msobkow.v3_1.cfsec.cfsecramtest \
	\
	io.github.msobkow.v3_1.cfint.cfint \
	io.github.msobkow.v3_1.cfint.cfintbuff \
	io.github.msobkow.v3_1.cfint.cfintjpa \
	io.github.msobkow.v3_1.cfint.cfintjpatest \
	io.github.msobkow.v3_1.cfint.cfintsaxloader \
	io.github.msobkow.v3_1.cfint.cfintjavafx \
	io.github.msobkow.v3_1.cfint.cfintcustfx \
	io.github.msobkow.v3_1.cfint.cfintram \
	io.github.msobkow.v3_1.cfint.cfintramtest \
	\
	io.github.msobkow.v3_1.cfbam.cfbam \
	io.github.msobkow.v3_1.cfbam.cfbambuff \
	io.github.msobkow.v3_1.cfbam.cfbamjpa \
	io.github.msobkow.v3_1.cfbam.cfbamjpatest \
	io.github.msobkow.v3_1.cfbam.cfbamsaxloader \
	io.github.msobkow.v3_1.cfbam.cfbamjavafx \
	io.github.msobkow.v3_1.cfbam.cfbamcustfx \
	io.github.msobkow.v3_1.cfbam.cfbamram \
	io.github.msobkow.v3_1.cfbam.cfbamramtest
do
	pushd ${aprojdir}
	export CMD="git $CLIARG1 $CLIARG2 $CLIARG3 $CLIARG4 $CLIARG5"
#	echo "CMD is \"$CMD\""
	eval $CMD
	popd
done
cd $MSSCFHOME
