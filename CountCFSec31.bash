#!/bin/bash
cd $MCF_HOME
mydate=`date +%Y-%m-%d-%Hh%M`
codecount server.markhome.mcf.v3_1.cfsec* | tee $HOME/count-v3_1-cfsec-${mydate}.txt
