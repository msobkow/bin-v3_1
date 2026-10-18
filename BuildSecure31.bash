#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42-alpha13-ebf-202610172230"
fi
pushd $YCF_HOME
let MavenStatus=0
echo "INFO: Building 3.1.${CLIARGS} Java jars for YCF Secure ..."
for aprojdir in \
	server.markhome.ycf \
	server.markhome.ycf/ycf-v3_1 \
	server.markhome.ycf/ycf-v3_1-core \
	server.markhome.ycf/ycf-v3_1-dbutil \
	server.markhome.ycf/ycf-v3_1-securepub \
	server.markhome.ycf/ycf-v3_1-secureprot \
	server.markhome.ycf/ycf-v3_1-secure \
	server.markhome.ycf/ycf-v3_1-securejpa \
	server.markhome.ycf/ycf-v3_1-securejpatest \
	server.markhome.ycf/ycf-v3_1-securesaxloader \
	server.markhome.ycf/ycf-v3_1-securejavafx \
	server.markhome.ycf/ycf-v3_1-secureram \
	server.markhome.ycf/ycf-v3_1-secureramtest
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
	echo "SUCCESS: All 3.1.${CLIARGS} Java builds for YCF Secure completed successfully - copying jars to bin-v3_1/lib ..."
	if [ ! -d $YCF_HOME/bin-v3_1/lib ]
	then
		mkdir -v $YCF_HOME/bin-v3_1/lib
	fi
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-core.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-dbtest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-javafx.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-securepub.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-secureprot.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-secure.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-securejpa.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-securejpatest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-securesaxloader.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-securejavafx.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-secureram.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-secureramtest.jar $YCF_HOME/bin-v3_1/lib/
	echo "DONE: All 3.1 Java jars for YCF Secure 3.1.${CLIARGS} copied successfully."
