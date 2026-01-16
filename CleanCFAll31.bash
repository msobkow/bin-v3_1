#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
	io.github.msobkow.v3_1.cfbam.cfbamjavafx \
	io.github.msobkow.v3_1.cfbam.cfbamsaxloader \
	io.github.msobkow.v3_1.cfbam.cfbamjpatest \
	io.github.msobkow.v3_1.cfbam.cfbamjpa \
	io.github.msobkow.v3_1.cfbam.cfbambuff \
	io.github.msobkow.v3_1.cfbam.cfbam \
	\
	io.github.msobkow.v3_1.cfint.cfintjavafx \
	io.github.msobkow.v3_1.cfint.cfintsaxloader \
	io.github.msobkow.v3_1.cfint.cfintjpatest \
	io.github.msobkow.v3_1.cfint.cfintjpa \
	io.github.msobkow.v3_1.cfint.cfintbuff \
	io.github.msobkow.v3_1.cfint.cfint \
	\
	io.github.msobkow.v3_1.cfsec.cfsecjavafx \
	io.github.msobkow.v3_1.cfsec.cfsecsaxloader \
	io.github.msobkow.v3_1.cfsec.cfsecjpatest \
	io.github.msobkow.v3_1.cfsec.cfsecjpa \
	io.github.msobkow.v3_1.cfsec.cfsecbuff \
	io.github.msobkow.v3_1.cfsec.cfsec \
	\
	io.github.msobkow.v3_1.cflib.javafx \
	io.github.msobkow.v3_1.cflib.dbtest \
	io.github.msobkow.v3_1.cflib.dbutil \
	io.github.msobkow.v3_1.cflib \
	\
	io.github.msobkow.v3_1 \
	io.github.msobkow
do
	if [ -a ${aprojdir}/pom.xml ]; then
		pushd ${aprojdir}
			mvn -U install
		popd
	fi
done
popd
