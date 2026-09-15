#!/bin/bash
cd $MCF_HOME
mydate=`date +%Y-%m-%d-%Hh%M`
codecount server.markhome.mcf.v3_1.cflib server.markhome.mcf.v3_1.cfsec server.markhome.mcf.v3_1.cfint server.markhome.mcf.v3_1.cfbam | tee $HOME/count-v3_1-${mydate}.txt
