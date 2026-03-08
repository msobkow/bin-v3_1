#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
pushd $MCF_HOME
let MavenStatus=0
#	server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr \
#	server.markhome.mcf.v3_1.cfint.cfintsaxramldr \
#	server.markhome.mcf.v3_1.cfbam.cfbamsaxramldr
for aprojdir in \
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
	if [ "$MavenStatus" == "0" ]; then
		if [ -a ${aprojdir}/pom.xml ]; then
			pushd ${aprojdir}
				mvn -DbuildString="$CLIARGS" -U deploy
				let MavenStatus=$?
				if [ "$MavenStatus" != "0" ]; then
					echo "ERROR: mvn deploy -DbuildString=\"$CLIARGS\" for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ "$MavenStatus" == "0" ]; then
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib/3.1/server.markhome.mcf.v3_1.cflib-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.dbutil/3.1/server.markhome.mcf.v3_1.cflib.dbutil-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.dbtest/3.1/server.markhome.mcf.v3_1.cflib.dbtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.javafx/3.1/server.markhome.mcf.v3_1.cflib.javafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsec/3.1/server.markhome.mcf.v3_1.cfsec.cfsec-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecbuff/3.1/server.markhome.mcf.v3_1.cfsec.cfsecbuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjpa/3.1/server.markhome.mcf.v3_1.cfsec.cfsecjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjpatest/3.1/server.markhome.mcf.v3_1.cfsec.cfsecjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecsaxloader/3.1/server.markhome.mcf.v3_1.cfsec.cfsecsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecram/3.1/server.markhome.mcf.v3_1.cfsec.cfsecram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecramtest/3.1/server.markhome.mcf.v3_1.cfsec.cfsecramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr/3.1/server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjavafx/3.1/server.markhome.mcf.v3_1.cfsec.cfsecjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfseccustfx/3.1/server.markhome.mcf.v3_1.cfsec.cfseccustfx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfint/3.1/server.markhome.mcf.v3_1.cfint.cfint-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintbuff/3.1/server.markhome.mcf.v3_1.cfint.cfintbuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintjpa/3.1/server.markhome.mcf.v3_1.cfint.cfintjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintjpatest/3.1/server.markhome.mcf.v3_1.cfint.cfintjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintsaxloader/3.1/server.markhome.mcf.v3_1.cfint.cfintsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintram/3.1/server.markhome.mcf.v3_1.cfint.cfintram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintramtest/3.1/server.markhome.mcf.v3_1.cfint.cfintramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintsaxramldr/3.1/server.markhome.mcf.v3_1.cfint.cfintsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintjavafx/3.1/server.markhome.mcf.v3_1.cfint.cfintjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfint.cfintcustfx/3.1/server.markhome.mcf.v3_1.cfint.cfintcustfx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbam/3.1/server.markhome.mcf.v3_1.cfbam.cfbam-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbambuff/3.1/server.markhome.mcf.v3_1.cfbam.cfbambuff-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamjpa/3.1/server.markhome.mcf.v3_1.cfbam.cfbamjpa-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamjpatest/3.1/server.markhome.mcf.v3_1.cfbam.cfbamjpatest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamsaxloader/3.1/server.markhome.mcf.v3_1.cfbam.cfbamsaxloader-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamram/3.1/server.markhome.mcf.v3_1.cfbam.cfbamram-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamramtest/3.1/server.markhome.mcf.v3_1.cfbam.cfbamramtest-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamsaxramldr/3.1/server.markhome.mcf.v3_1.cfbam.cfbamsaxramldr-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamjavafx/3.1/server.markhome.mcf.v3_1.cfbam.cfbamjavafx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfbam.cfbamcustfx/3.1/server.markhome.mcf.v3_1.cfbam.cfbamcustfx-3.1.jar $MCF_HOME/bin-v3_1
	cp -v $MCF_HOME/server.markhome.mcf.v3_1.*/target/*-spring-boot.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
