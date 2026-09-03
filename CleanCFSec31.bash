#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
	server.markhome.mcf \
	server.markhome.mcf.v3_1 \
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
	server.markhome.mcf.v3_1.cfsec.cfseccustfx \
	server.markhome.mcf.v3_1.cfsec.cfsecjavafx \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr \
	server.markhome.mcf.v3_1.cfsec.cfsecramtest \
	server.markhome.mcf.v3_1.cfsec.cfsecram \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxloader \
	server.markhome.mcf.v3_1.cfsec.cfsecjpatest \
	server.markhome.mcf.v3_1.cfsec.cfsecjpa \
	server.markhome.mcf.v3_1.cfsec.cfsec \
	server.markhome.mcf.v3_1.cfsec.cfsecprot \
	server.markhome.mcf.v3_1.cfsec.cfsecpub \
	server.markhome.mcf.v3_1.cflib.dbutil \
	server.markhome.mcf.v3_1.cflib \
	\
	commons-codec-js \
	commons-io-js \
	\
	server.markhome.mcf.v3_1 \
	server.markhome.mcf
do
	if [ -a ${aprojdir}/pom.xml ]; then
		pushd ${aprojdir}
			mvn -U clean
		popd
	fi
done
popd
