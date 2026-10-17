#!/bin/bash
if [ "$MCF_HOME" == "" ]; then
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
	export MCF_HOME=/opt/ycf/v3_1/java
fi
if [ "$MCF_HOME" != "" ]; then
	pushd $MCF_HOME
	for arepo in \
		bin-v3_1 \
		server.markhome.ycf \
		server.markhome.ycf.v3_1 \
		server.markhome.ycf.v3_1.cflib \
		server.markhome.ycf.v3_1.dbutil \
		server.markhome.ycf.v3_1.dbtest \
		server.markhome.ycf.v3_1.javafx \
		server.markhome.ycf.v3_1.secure.secure \
		server.markhome.ycf.v3_1.secure.securejpa \
		server.markhome.ycf.v3_1.secure.securesaxloader \
		server.markhome.ycf.v3_1.secure.secureram \
		server.markhome.ycf.v3_1.secure.securejpatest \
		server.markhome.ycf.v3_1.secure.secureramtest \
		server.markhome.ycf.v3_1.secure.securejavafx \
		server.markhome.ycf.v3_1.secure.securecustfx \
		server.markhome.ycf.v3_1.secure.secureappsetup \
		server.markhome.ycf.v3_1.secure.securesaxramldr \
		server.markhome.ycf.v3_1.intnet.intnet \
		server.markhome.ycf.v3_1.intnet.intnetjpa \
		server.markhome.ycf.v3_1.intnet.intnetsaxloader \
		server.markhome.ycf.v3_1.intnet.intnetram \
		server.markhome.ycf.v3_1.intnet.intnetjpatest \
		server.markhome.ycf.v3_1.intnet.intnetramtest \
		server.markhome.ycf.v3_1.intnet.intnetjavafx \
		server.markhome.ycf.v3_1.intnet.intnetcustfx \
		server.markhome.ycf.v3_1.intnet.intnetappsetup \
		server.markhome.ycf.v3_1.intnet.intnetsaxramldr \
		server.markhome.ycf.v3_1.busmodel.busmodel \
		server.markhome.ycf.v3_1.busmodel.busmodeljpa \
		server.markhome.ycf.v3_1.busmodel.busmodelsaxloader \
		server.markhome.ycf.v3_1.busmodel.busmodelram \
		server.markhome.ycf.v3_1.busmodel.busmodeljpatest \
		server.markhome.ycf.v3_1.busmodel.busmodelramtest \
		server.markhome.ycf.v3_1.busmodel.busmodeljavafx \
		server.markhome.ycf.v3_1.busmodel.busmodelcustfx \
		server.markhome.ycf.v3_1.busmodel.busmodelcusteditor \
		server.markhome.ycf.v3_1.busmodel.busmodelappsetup \
		server.markhome.ycf.v3_1.busmodel.busmodelsaxramldr
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
