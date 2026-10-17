#!/bin/bash
cd $YCF_HOME
mydate=`date +%Y-%m-%d-%Hh%M`
codecount server.markhome.ycf server.markhome.ycf.v3_1.secure server.markhome.ycf.v3_1.intnet server.markhome.ycf.v3_1.busmodel | tee $HOME/count-v3_1-${mydate}.txt
