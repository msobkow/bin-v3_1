#!/bin/bash
pushd $YCF_HOME
export CLIARGS="42-alpha13-ebf-202610172230"
for aprojdir in \
	server.markhome.ycf/ycf-busmodelappsetup \
	server.markhome.ycf/ycf-busmodeljavafx \
	server.markhome.ycf/ycf-busmodelsaxramldr \
	server.markhome.ycf/ycf-busmodelramtest \
	server.markhome.ycf/ycf-busmodelram \
	server.markhome.ycf/ycf-busmodelsaxloader \
	server.markhome.ycf/ycf-busmodeljpatest \
	server.markhome.ycf/ycf-busmodeljpa \
	server.markhome.ycf/ycf-busmodel \
	server.markhome.ycf/ycf-busmodelprot \
	server.markhome.ycf/ycf-busmodelpub \
	\
	server.markhome.ycf/ycf-intnetappsetup \
	server.markhome.ycf/ycf-intnetjavafx \
	server.markhome.ycf/ycf-intnetsaxramldr \
	server.markhome.ycf/ycf-intnetramtest \
	server.markhome.ycf/ycf-intnetram \
	server.markhome.ycf/ycf-intnetsaxloader \
	server.markhome.ycf/ycf-intnetjpatest \
	server.markhome.ycf/ycf-intnetjpa \
	server.markhome.ycf/ycf-intnet \
	server.markhome.ycf/ycf-intnetprot \
	server.markhome.ycf/ycf-intnetpub \
	\
	server.markhome.ycf/ycf-secureappsetup \
	server.markhome.ycf/ycf-securejavafx \
	server.markhome.ycf/ycf-securesaxramldr \
	server.markhome.ycf/ycf-secureramtest \
	server.markhome.ycf/ycf-secureram \
	server.markhome.ycf/ycf-securesaxloader \
	server.markhome.ycf/ycf-securejpatest \
	server.markhome.ycf/ycf-securejpa \
	server.markhome.ycf/ycf-secure \
	server.markhome.ycf/ycf-secureprot \
	server.markhome.ycf/ycf-securepub
do
	rm -Rf ${aprojdir}/src/main/java/server ${aprojdir}/src/main/resources/*
done
popd
