#!/bin/bash
pushd $MCF_HOME
let MavenStatus=0
#	io.github.msobkow.v3_1.cfsec.cfsecsaxramldr \
#	io.github.msobkow.v3_1.cfint.cfintsaxramldr \
#	io.github.msobkow.v3_1.cfbam.cfbamsaxramldr
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
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib/3.1/io.github.msobkow.v3_1.cflib-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib.dbutil/3.1/io.github.msobkow.v3_1.cflib.dbutil-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib.dbtest/3.1/io.github.msobkow.v3_1.cflib.dbtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cflib.javafx/3.1/io.github.msobkow.v3_1.cflib.javafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsec/3.1/io.github.msobkow.v3_1.cfsec.cfsec-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecbuff/3.1/io.github.msobkow.v3_1.cfsec.cfsecbuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecjpa/3.1/io.github.msobkow.v3_1.cfsec.cfsecjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecjpatest/3.1/io.github.msobkow.v3_1.cfsec.cfsecjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecsaxloader/3.1/io.github.msobkow.v3_1.cfsec.cfsecsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecram/3.1/io.github.msobkow.v3_1.cfsec.cfsecram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecramtest/3.1/io.github.msobkow.v3_1.cfsec.cfsecramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecsaxramldr/3.1/io.github.msobkow.v3_1.cfsec.cfsecsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfsecjavafx/3.1/io.github.msobkow.v3_1.cfsec.cfsecjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfsec.cfseccustfx/3.1/io.github.msobkow.v3_1.cfsec.cfseccustfx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfint/3.1/io.github.msobkow.v3_1.cfint.cfint-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintbuff/3.1/io.github.msobkow.v3_1.cfint.cfintbuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintjpa/3.1/io.github.msobkow.v3_1.cfint.cfintjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintjpatest/3.1/io.github.msobkow.v3_1.cfint.cfintjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintsaxloader/3.1/io.github.msobkow.v3_1.cfint.cfintsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintram/3.1/io.github.msobkow.v3_1.cfint.cfintram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintramtest/3.1/io.github.msobkow.v3_1.cfint.cfintramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintsaxramldr/3.1/io.github.msobkow.v3_1.cfint.cfintsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintjavafx/3.1/io.github.msobkow.v3_1.cfint.cfintjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfint.cfintcustfx/3.1/io.github.msobkow.v3_1.cfint.cfintcustfx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbam/3.1/io.github.msobkow.v3_1.cfbam.cfbam-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbambuff/3.1/io.github.msobkow.v3_1.cfbam.cfbambuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamjpa/3.1/io.github.msobkow.v3_1.cfbam.cfbamjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamjpatest/3.1/io.github.msobkow.v3_1.cfbam.cfbamjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamsaxloader/3.1/io.github.msobkow.v3_1.cfbam.cfbamsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamram/3.1/io.github.msobkow.v3_1.cfbam.cfbamram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamramtest/3.1/io.github.msobkow.v3_1.cfbam.cfbamramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamsaxramldr/3.1/io.github.msobkow.v3_1.cfbam.cfbamsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamjavafx/3.1/io.github.msobkow.v3_1.cfbam.cfbamjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/io/github/msobkow/v3_1/io.github.msobkow.v3_1.cfbam.cfbamcustfx/3.1/io.github.msobkow.v3_1.cfbam.cfbamcustfx-3.1.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
