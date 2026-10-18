#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42-alpha13-ebf-202610172230"
fi
pushd $YCF_HOME
export MavenStatus="$?"

#	server.markhome.ycf/ycf-securesaxramldr
#	server.markhome.ycf/ycf-intnetsaxramldr
#	server.markhome.ycf/ycf-busmodelsaxramldr
#	server.markhome.ycf/ycf-securecustfx
#	server.markhome.ycf/ycf-intnetcustfx
#	server.markhome.ycf/ycf-busmodelcustfx

for aprojdir in \
	server.markhome.ycf \
	server.markhome.ycf.v3_1 \
	server.markhome.ycf.v3_1.secure \
	server.markhome.ycf.v3_1.intnet \
	server.markhome.ycf.v3_1.busmodel
do
	if [ "$MavenStatus" == "0" ]
	then
		if [ -a ${aprojdir}/pom.xml ]
		then
			pushd ${aprojdir}
				mvn -DbuildString="$CLIARGS" -U install
				export MavenStatus="$?"
				if [ ! "$MavenStatus" == "0" ]
				then
					echo "ERROR: 'mvn -DbuildString=\"$CLIARGS\" -U install' for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ "$MavenStatus" == "0" ]; then
	echo "SUCCESS: All 3.1 Java builds completed successfully - installing jars to bin-v3_1/lib ..."
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
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetpub.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetprot.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnet.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetjpa.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetjpatest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetsaxloader.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetjavafx.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetram.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-intnetramtest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodelpub.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodelprot.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodel.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodeljpa.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodeljpatest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodelsaxloader.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodeljavafx.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodelram.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/ycf-v3_1-busmodelramtest.jar $YCF_HOME/bin-v3_1/lib/
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.${CLIARGS}/*-spring-boot.jar $YCF_HOME/bin-v3_1/lib/
	echo "DONE: Installation of 3.1..${CLIARGS} jars to bin-v3_1/lib completed successfully"
fi
popd
