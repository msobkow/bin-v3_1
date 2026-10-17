#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
pushd $MCF_HOME
export MavenStatus="$?"
#	server.markhome.ycf.v3_1.secure.securesaxramldr \
#	server.markhome.ycf.v3_1.intnet.intnetsaxramldr \
#	server.markhome.ycf.v3_1.busmodel.busmodelsaxramldr
#	server.markhome.ycf.v3_1.secure.securecustfx \
#	server.markhome.ycf.v3_1.intnet.intnetcustfx \
#	server.markhome.ycf.v3_1.busmodel.busmodelcustfx \
for aprojdir in \
	server.markhome.ycf \
	server.markhome.ycf.v3_1 \
	\
	server.markhome.ycf.v3_1.\
	server.markhome.ycf.v3_1.dbutil \
	server.markhome.ycf.v3_1.dbtest \
	server.markhome.ycf.v3_1.javafx \
	\
	server.markhome.ycf.v3_1.secure.securepub \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.secureramtest \
	\
	server.markhome.ycf.v3_1.intnet.intnetpub \
	server.markhome.ycf.v3_1.intnet.intnetprot \
	server.markhome.ycf.v3_1.intnet.intnet \
	server.markhome.ycf.v3_1.intnet.intnetjpa \
	server.markhome.ycf.v3_1.intnet.intnetjpatest \
	server.markhome.ycf.v3_1.intnet.intnetsaxloader \
	server.markhome.ycf.v3_1.intnet.intnetjavafx \
	server.markhome.ycf.v3_1.intnet.intnetram \
	server.markhome.ycf.v3_1.intnet.intnetramtest \
	\
	server.markhome.ycf.v3_1.busmodel.busmodelpub \
	server.markhome.ycf.v3_1.busmodel.busmodelprot \
	server.markhome.ycf.v3_1.busmodel.busmodel \
	server.markhome.ycf.v3_1.busmodel.busmodeljpa \
	server.markhome.ycf.v3_1.busmodel.busmodeljpatest \
	server.markhome.ycf.v3_1.busmodel.busmodelsaxloader \
	server.markhome.ycf.v3_1.busmodel.busmodeljavafx \
	server.markhome.ycf.v3_1.busmodel.busmodelram \
	server.markhome.ycf.v3_1.busmodel.busmodelramtest
do
	if [ "$MavenStatus" == "0" ]
	then
		if [ -a ${aprojdir}/pom.xml ]
		then
			pushd ${aprojdir}
				mvn -DbuildString="$CLIARGS" -U deploy
				export MavenStatus="$?"
				if [ ! "$MavenStatus" == "0" ]
				then
					echo "ERROR: 'mvn -DbuildString=\"$CLIARGS\" -U deploy' for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ "$MavenStatus" == "0" ]; then
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf/3.1.42/server.markhome.ycf.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1/3.1.42/server.markhome.ycf.v3_1.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.dbutil/3.1.42/server.markhome.ycf.v3_1.dbutil-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.dbtest/3.1.42/server.markhome.ycf.v3_1.dbtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.javafx/3.1.42/server.markhome.ycf.v3_1.javafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securepub/3.1.42/server.markhome.ycf.v3_1.secure.securepub-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.secureprot/3.1.42/server.markhome.ycf.v3_1.secure.secureprot-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.secure/3.1.42/server.markhome.ycf.v3_1.secure.secure-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securejpa/3.1.42/server.markhome.ycf.v3_1.secure.securejpa-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securejpatest/3.1.42/server.markhome.ycf.v3_1.secure.securejpatest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securesaxloader/3.1.42/server.markhome.ycf.v3_1.secure.securesaxloader-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.secureram/3.1.42/server.markhome.ycf.v3_1.secure.secureram-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.secureramtest/3.1.42/server.markhome.ycf.v3_1.secure.secureramtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securesaxramldr/3.1.42/server.markhome.ycf.v3_1.secure.securesaxramldr-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securejavafx/3.1.42/server.markhome.ycf.v3_1.secure.securejavafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.secure.securecustfx/3.1.42/server.markhome.ycf.v3_1.secure.securecustfx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetpub/3.1.42/server.markhome.ycf.v3_1.intnet.intnetpub-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetprot/3.1.42/server.markhome.ycf.v3_1.intnet.intnetprot-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnet/3.1.42/server.markhome.ycf.v3_1.intnet.intnet-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetjpa/3.1.42/server.markhome.ycf.v3_1.intnet.intnetjpa-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetjpatest/3.1.42/server.markhome.ycf.v3_1.intnet.intnetjpatest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetsaxloader/3.1.42/server.markhome.ycf.v3_1.intnet.intnetsaxloader-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetram/3.1.42/server.markhome.ycf.v3_1.intnet.intnetram-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetramtest/3.1.42/server.markhome.ycf.v3_1.intnet.intnetramtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetsaxramldr/3.1.42/server.markhome.ycf.v3_1.intnet.intnetsaxramldr-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetjavafx/3.1.42/server.markhome.ycf.v3_1.intnet.intnetjavafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.intnet.intnetcustfx/3.1.42/server.markhome.ycf.v3_1.intnet.intnetcustfx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelpub/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelpub-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelprot/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelprot-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodel/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodel-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodeljpa/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodeljpa-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodeljpatest/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodeljpatest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelsaxloader/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelsaxloader-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelram/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelram-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelramtest/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelramtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelsaxramldr/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelsaxramldr-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodeljavafx/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodeljavafx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.busmodel.busmodelcustfx/3.1.42/server.markhome.ycf.v3_1.busmodel.busmodelcustfx-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $MCF_HOME/server.markhome.ycf.v3_1.*/target/*-spring-boot.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
