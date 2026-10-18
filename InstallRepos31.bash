#!/bin/bash
if [ "$YCF_HOME" == "" ]; then
	if [ ! -d /opt/ycf ]; then
		sudo mkdir /opt/ycf
		sudo chown $USER:$USER /opt/ycf
	fi;
	if [ ! -d /opt/ycf/v3_1 ]; then
		mkdir /opt/ycf/v3_1
	fi
	if [ ! -d /opt/ycf/v3_1/java ]; then
		mkdir /opt/ycf/v3_1/java
	fi
	export YCF_HOME=/opt/ycf/v3_1/java
fi
if [ "$YCF_HOME" != "" ]; then
	pushd $YCF_HOME
	for arepo in \
		bin-v3_1 \
		server.markhome.ycf \
		server.markhome.ycf/ycf-v3_1 \
		server.markhome.ycf/ycf-v3_1-secure \
		server.markhome.ycf/ycf-v3_1-intnet \
		server.markhome.ycf/ycf-v3_1-busmodel
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
