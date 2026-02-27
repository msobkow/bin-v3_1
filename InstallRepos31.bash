#!/bin/bash
if [ "$MCF_HOME" == "" ]; then
	if [ ! -d /opt/mcf ]; then
		sudo mkdir /opt/mcf
		sudo chown $USER:$USER /opt/mcf
	fi;
	if [ ! -d /opt/mcf/v3_1 ]; then
		mkdir /opt/mcf/v3_1
	fi
	if [ ! -d /opt/mcf/v3_1/java ]; then
		mkdir /opt/mcf/v3_1/java
	fi
	export MCF_HOME=/opt/mcf/v3_1/java
fi
if [ "$MCF_HOME" != "" ]; then
	pushd $MCF_HOME
	for arepo in \
		bin-v3_1 \
		io.github.msobkow \
		io.github.msobkow.v3_1 \
		io.github.msobkow.v3_1.cflib \
		io.github.msobkow.v3_1.cflib.dbutil \
		io.github.msobkow.v3_1.cflib.dbtest \
		io.github.msobkow.v3_1.cflib.javafx \
		io.github.msobkow.v3_1.cfsec.cfsec \
		io.github.msobkow.v3_1.cfsec.cfsecbuff \
		io.github.msobkow.v3_1.cfsec.cfsecjpa \
		io.github.msobkow.v3_1.cfsec.cfsecsaxloader \
		io.github.msobkow.v3_1.cfsec.cfsecram \
		io.github.msobkow.v3_1.cfsec.cfsecjpatest \
		io.github.msobkow.v3_1.cfsec.cfsecramtest \
		io.github.msobkow.v3_1.cfsec.cfsecjavafx \
		io.github.msobkow.v3_1.cfsec.cfseccustfx \
		io.github.msobkow.v3_1.cfsec.cfsecappsetup \
		io.github.msobkow.v3_1.cfsec.cfsecsaxramldr \
		io.github.msobkow.v3_1.cfint.cfint \
		io.github.msobkow.v3_1.cfint.cfintbuff \
		io.github.msobkow.v3_1.cfint.cfintjpa \
		io.github.msobkow.v3_1.cfint.cfintsaxloader \
		io.github.msobkow.v3_1.cfint.cfintram \
		io.github.msobkow.v3_1.cfint.cfintjpatest \
		io.github.msobkow.v3_1.cfint.cfintramtest \
		io.github.msobkow.v3_1.cfint.cfintjavafx \
		io.github.msobkow.v3_1.cfint.cfintcustfx \
		io.github.msobkow.v3_1.cfint.cfintappsetup \
		io.github.msobkow.v3_1.cfint.cfintsaxramldr \
		io.github.msobkow.v3_1.cfbam.cfbam \
		io.github.msobkow.v3_1.cfbam.cfbambuff \
		io.github.msobkow.v3_1.cfbam.cfbamjpa \
		io.github.msobkow.v3_1.cfbam.cfbamsaxloader \
		io.github.msobkow.v3_1.cfbam.cfbamram \
		io.github.msobkow.v3_1.cfbam.cfbamjpatest \
		io.github.msobkow.v3_1.cfbam.cfbamramtest \
		io.github.msobkow.v3_1.cfbam.cfbamjavafx \
		io.github.msobkow.v3_1.cfbam.cfbamcustfx \
		io.github.msobkow.v3_1.cfbam.cfbamcusteditor \
		io.github.msobkow.v3_1.cfbam.cfbamappsetup \
		io.github.msobkow.v3_1.cfbam.cfbamsaxramldr
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
