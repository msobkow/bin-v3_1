#!/bin/bash
for adir in $MSSCFHOME/v3_1-maven/java/* $MSSCFHOME/v3_1/java/*
do
		pushd $adir
		chmod 755 `find . -name '*.bash'`
		git add `find . -name '.gitignore' -o -name '*.bash'`
		git update-index --add --chmod=+x `find . -name '*.bash'`
		popd
done
