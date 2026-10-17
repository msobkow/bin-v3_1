#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
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
	rm -Rf ${aprojdir}/src/main/java/* ${aprojdir}/src/main/resources/*
done
popd
