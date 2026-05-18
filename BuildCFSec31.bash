#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
pushd $MCF_HOME
let MavenStatus=0
for aprojdir in \
	server.markhome.mcf.v3_1.cfsec.cfsec \
	server.markhome.mcf.v3_1.cfsec.cfsecbuff \
	server.markhome.mcf.v3_1.cfsec.cfsecjpa \
	server.markhome.mcf.v3_1.cfsec.cfsecjpatest \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxloader \
	server.markhome.mcf.v3_1.cfsec.cfsecjavafx \
	server.markhome.mcf.v3_1.cfsec.cfsecram \
	server.markhome.mcf.v3_1.cfsec.cfsecramtest
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
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib/3.1.42/server.markhome.mcf.v3_1.cflib-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.dbutil/3.1.42/server.markhome.mcf.v3_1.cflib.dbutil-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.dbtest/3.1.42/server.markhome.mcf.v3_1.cflib.dbtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cflib.javafx/3.1.42/server.markhome.mcf.v3_1.cflib.javafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsec/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsec-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecbuff/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecbuff-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjpa/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecjpa-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjpatest/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecjpatest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecsaxloader/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecsaxloader-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecram/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecram-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecramtest/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecramtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfsecjavafx/3.1.42/server.markhome.mcf.v3_1.cfsec.cfsecjavafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/mcf/v3_1/server.markhome.mcf.v3_1.cfsec.cfseccustfx/3.1.42/server.markhome.mcf.v3_1.cfsec.cfseccustfx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $MCF_HOME/server.markhome.mcf.v3_1.cfsec*/target/*-spring-boot.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
