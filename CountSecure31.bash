#!/bin/bash
cd $MCF_HOME
mydate=`date +%Y-%m-%d-%Hh%M`
codecount server.markhome.ycf.v3_1.secure* | tee $HOME/count-v3_1-secure-${mydate}.txt
