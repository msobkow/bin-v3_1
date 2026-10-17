#!/bin/bash
export CLIARGS="$*"
if [ "$CLIARGS" == "" ]; then
	export CLIARGS="42"
fi
pushd $MCF_HOME
let MavenStatus=0
for aprojdir in \
	server.markhome.ycf \
	server.markhome.ycf.v3_1 \
	commons-lang3-js \
	commons-io-js \
	commons-codec-js \
	junit-framework-js \
	jena-js \
	server.markhome.ycf.v3_1.cflib \
	server.markhome.ycf.v3_1.cflib.dbutil \
	server.markhome.ycf.v3_1.secure.securepub \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.secureramtest
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
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.cflib/3.1.42/server.markhome.ycf.v3_1.cflib-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.cflib.dbutil/3.1.42/server.markhome.ycf.v3_1.cflib.dbutil-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.cflib.dbtest/3.1.42/server.markhome.ycf.v3_1.cflib.dbtest-3.1.42.jar $MCF_HOME/bin-v3_1
	cp -v $HOME/.m2/repository/server/markhome/ycf/v3_1/server.markhome.ycf.v3_1.cflib.javafx/3.1.42/server.markhome.ycf.v3_1.cflib.javafx-3.1.42.jar $MCF_HOME/bin-v3_1
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
	cp -v $MCF_HOME/server.markhome.ycf.v3_1.secure*/target/*-spring-boot.jar $MCF_HOME/bin-v3_1
	echo "SUCCESS: All 3.1 Java builds completed successfully"
fi
popd
