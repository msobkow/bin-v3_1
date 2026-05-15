#!/bin/bash
pushd $MCF_HOME
for aprojdir in \
	server.markhome.mcf.v3_1.cfsec.cfsecappsetup \
	server.markhome.mcf.v3_1.cfsec.cfsecjavafx \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr \
	server.markhome.mcf.v3_1.cfsec.cfsecramtest \
	server.markhome.mcf.v3_1.cfsec.cfsecram \
	server.markhome.mcf.v3_1.cfsec.cfsecsaxloader \
	server.markhome.mcf.v3_1.cfsec.cfsecjpatest \
	server.markhome.mcf.v3_1.cfsec.cfsecjpa \
	server.markhome.mcf.v3_1.cfsec.cfsecbuff \
	server.markhome.mcf.v3_1.cfsec.cfsec
do
	rm -Rf ${aprojdir}/src/main/java/server ${aprojdir}/src/main/resources/*
done
popd
