#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
	server.markhome.ycf.v3_1.busmodel.busmodelappsetup \
	server.markhome.ycf.v3_1.busmodel.busmodeljavafx \
	server.markhome.ycf.v3_1.busmodel.busmodelsaxramldr \
	server.markhome.ycf.v3_1.busmodel.busmodelramtest \
	server.markhome.ycf.v3_1.busmodel.busmodelram \
	server.markhome.ycf.v3_1.busmodel.busmodelsaxloader \
	server.markhome.ycf.v3_1.busmodel.busmodeljpatest \
	server.markhome.ycf.v3_1.busmodel.busmodeljpa \
	server.markhome.ycf.v3_1.busmodel.busmodel \
	server.markhome.ycf.v3_1.busmodel.busmodelprot \
	server.markhome.ycf.v3_1.busmodel.busmodelpub \
	\
	server.markhome.ycf.v3_1.intnet.intnetappsetup \
	server.markhome.ycf.v3_1.intnet.intnetjavafx \
	server.markhome.ycf.v3_1.intnet.intnetsaxramldr \
	server.markhome.ycf.v3_1.intnet.intnetramtest \
	server.markhome.ycf.v3_1.intnet.intnetram \
	server.markhome.ycf.v3_1.intnet.intnetsaxloader \
	server.markhome.ycf.v3_1.intnet.intnetjpatest \
	server.markhome.ycf.v3_1.intnet.intnetjpa \
	server.markhome.ycf.v3_1.intnet.intnet \
	server.markhome.ycf.v3_1.intnet.intnetprot \
	server.markhome.ycf.v3_1.intnet.intnetpub \
	\
	server.markhome.ycf.v3_1.secure.secureappsetup \
	server.markhome.ycf.v3_1.secure.securejavafx \
	server.markhome.ycf.v3_1.secure.securesaxramldr \
	server.markhome.ycf.v3_1.secure.secureramtest \
	server.markhome.ycf.v3_1.secure.secureram \
	server.markhome.ycf.v3_1.secure.securesaxloader \
	server.markhome.ycf.v3_1.secure.securejpatest \
	server.markhome.ycf.v3_1.secure.securejpa \
	server.markhome.ycf.v3_1.secure.secure \
	server.markhome.ycf.v3_1.secure.secureprot \
	server.markhome.ycf.v3_1.secure.securepub
do
	rm -Rf ${aprojdir}/src/main/java/server ${aprojdir}/src/main/resources/*
done
popd
