#!/bin/bash
pushd $MCF_HOME
export CLIARGS="42-alpha13-ebf-202610172230"
for aprojdir in \
	server.markhome.ycf/ycf-v3_1-secureappsetup \
	server.markhome.ycf/ycf-v3_1-securejavafx \
	server.markhome.ycf/ycf-v3_1-securesaxramldr \
	server.markhome.ycf/ycf-v3_1-secureramtest \
	server.markhome.ycf/ycf-v3_1-secureram \
	server.markhome.ycf/ycf-v3_1-securesaxloader \
	server.markhome.ycf/ycf-v3_1-securejpatest \
	server.markhome.ycf/ycf-v3_1-securejpa \
	server.markhome.ycf/ycf-v3_1-secure \
	server.markhome.ycf/ycf-v3_1-secureprot \
	server.markhome.ycf/ycf-v3_1-securepub
do
	rm -Rf ${aprojdir}/src/main/java/* ${aprojdir}/src/main/resources/*
done
popd
