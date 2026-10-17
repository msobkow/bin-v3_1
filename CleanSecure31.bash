#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
	server.markhome.ycf \
	server.markhome.ycf.v3_1 \
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
for aprojdir in \
	server.markhome.ycf.v3_1.secure.securecustfx \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.securesaxramldr \
	server.markhome.ycf.v3_1.secure.secureramtest \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.securepub \
	server.markhome.ycf.v3_1.cflib.dbutil \
	server.markhome.ycf.v3_1.cflib \
	\
	commons-codec-js \
	commons-io-js \
	jena-js \
	junit-framework-js \
	commons-lang3-js \
	\
	server.markhome.ycf.v3_1 \
	server.markhome.ycf
do
	if [ -a ${aprojdir}/pom.xml ]; then
		pushd ${aprojdir}
			mvn -U clean
		popd
	fi
done
popd
