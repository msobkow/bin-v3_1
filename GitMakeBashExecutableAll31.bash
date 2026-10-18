#!/bin/bash
if [ "$YCF_HOME" != "" ]; then
	if [ -d "$YCF_HOME" ]; then
		cd "$YCF_HOME"
			for adir in *
			do
				pushd $adir
				chmod 755 `find . -name '*.bash'`
				git add `find . -name '.gitignore' -o -name '*.bash'`
				git update-index --add --chmod=+x `find . -name '*.bash'`
				popd
			done
		/usr/bin/ls -l --block-size=M
	fi
fi
