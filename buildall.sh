#!/bin/sh
for d in ./cloud/*
do
	if [ -d $d ]
	then
		FOLDER=${d##*/}
		PREFIX=${FOLDER%%-*}
		if [ "$PREFIX" != "x" ] && [ -f $d/build.sh ];then
			echo "find $d/build.sh"
			cd $d && ./build.sh && cd -
		fi
	fi
done



