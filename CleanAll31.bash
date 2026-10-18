#!/bin/bash
pushd $YCF_HOME
export MavenStatus="0"
export CLIARGS="42-alpha13-ebf-202610172230"
for aprojdir in \
	server.markhome.ycf/ycf-v3_1-busmodel \
	server.markhome.ycf/ycf-v3_1-intnet \
	server.markhome.ycf/ycf-v3_1-secure \
	server.markhome.ycf/ycf-v3_1 \
	server.markhome.ycf
do
	if [ "$MavenStatus" == "0" ]
	then
		if [ -a ${aprojdir}/pom.xml ]
		then
			pushd ${aprojdir}
				mvn -DbuildString="$CLIARGS" -U clean
				export MavenStatus=$?
				if [ ! "$MavenStatus" == "0" ]
				then
					echo "ERROR: 'mvn -DbuildString=\"$CLIARGS\" -U clean' for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
popd
