#!/bin/bash
pushd $MCF_HOME
let MavenStatus=0
for aprojdir in \
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
	\
	io.github.msobkow.v3_1.cfint.cfint \
	io.github.msobkow.v3_1.cfint.cfintbuff \
	io.github.msobkow.v3_1.cfint.cfintjpa \
	io.github.msobkow.v3_1.cfint.cfintjpatest \
	io.github.msobkow.v3_1.cfint.cfintsaxloader \
	io.github.msobkow.v3_1.cfint.cfintjavafx \
	io.github.msobkow.v3_1.cfint.cfintcustfx \
	\
	io.github.msobkow.v3_1.cfbam.cfbam \
	io.github.msobkow.v3_1.cfbam.cfbambuff \
	io.github.msobkow.v3_1.cfbam.cfbamjpa \
	io.github.msobkow.v3_1.cfbam.cfbamjpatest \
	io.github.msobkow.v3_1.cfbam.cfbamsaxloader \
	io.github.msobkow.v3_1.cfbam.cfbamjavafx
do
	if [ $MavenStatus == 0 ]; then
		if [ -a ${aprojdir}/pom.xml ]; then
			pushd ${aprojdir}
				mvn -U install
				let MavenStatus=$?
				if [ $MavenStatus != 0 ]; then
					echo "ERROR: mvn install for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ $MavenStatus == 0 ]; then
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbammsscf/3.1/io.github.msobkow.v3_1.cfbam.cfbammsscf-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsec/3.1/io.github.msobkow.v3_1.cfsec.cfsec-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamcustxmlloader/3.1/io.github.msobkow.v3_1.cfbam.cfbamxmlloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbam/3.1/io.github.msobkow.v3_1.cfbam.cfbam-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamram/3.1/io.github.msobkow.v3_1.cfbam.cfbamram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamcustmssbamcf/3.1/io.github.msobkow.v3_1.cfbam.cfbamcustmssbamcf-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecsaxloader/3.1/io.github.msobkow.v3_1.cfsec.cfsecsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamsaxloader/3.1/io.github.msobkow.v3_1.cfbam.cfbamsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintram/3.1/io.github.msobkow.v3_1.cfint.cfintram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib.cflib.javafx/3.1/io.github.msobkow.v3_1.cflib.cflib.javafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib.cflib/3.1/io.github.msobkow.v3_1.cflib.cflib-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfcli/3.1/io.github.msobkow.v3_1.cfcli-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintsaxloader/3.1/io.github.msobkow.v3_1.cfint.cfintsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfint/3.1/io.github.msobkow.v3_1.cfint.cfint-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecram/3.1/io.github.msobkow.v3_1.cfsec.cfsecram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfcore/3.1/io.github.msobkow.v3_1.cfcore-3.1.jar $MCF_HOME/bin-v3_1
#	cp -v $HOME/.m2/repository/commons-codec/commons-codec/1.18.0/commons-codec-1.18.0.jar $MCF_HOME/bin-v3_1
#	cp -v $HOME/.m2/repository/commons-io/commons-io/2.16.1/commons-io-2.16.1.jar $MCF_HOME/bin-v3_1
#	cp -v $HOME/.m2/repository/org/apache/logging/log4j/log4j-api/2.24.3/log4j-api-2.24.3.jar $MCF_HOME/bin-v3_1
#	cp -v $HOME/.m2/repository/xerces/xercesImpl/2.12.2/xercesImpl-2.12.2.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
