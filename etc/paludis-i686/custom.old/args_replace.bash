#!/bin/bash

#Params : string , word , replacement
function  replace
{
	a=$1;
	b=$2;
	c=$3;

	echo "${a/$b/$c}"
}

declare -A GYP_SETS

GYP_SETS['-Duse_system_ffmpeg']='1'
GYP_SETS['-Duse_system_icu']='1'
GYP_SETS['-Duse_system_libusb']='1'
GYP_SETS['-Duse_system_libvpx']='1'
GYP_SETS['-Duse_system_protobuf']='1'
GYP_SETS['-Duse_system_sqlite']='1'
#GYP_SETS['-Duse_system_v8']='1'
GYP_SETS['-Duse_system_zlib']='1'
GYP_SETS['opts_sse41']='0'
GYP_SETS['opts_sse42']='0'
GYP_SETS['opts_avx']='0'
GYP_SETS['opts_avx2']='0'
GYP_SETS['skia_opts_sse41']='0'
GYP_SETS['skia_opts_sse42']='0'
GYP_SETS['skia_opts_avx']='0'
GYP_SETS['skia_opts_avx2']='0'

ARGS_STR="$@"
ARGS_ARRAY=($ARGS_STR)
for x in "${!GYP_SETS[@]}"
do
	SET=${GYP_SETS["$x"]}

	for i in "${ARGS_ARRAY[@]}"
	do
		if [[ "${i}" == *"${x}"* ]]
	        then
        	        HH=$(replace "${ARGS_STR}" "${i}" "${x}=$SET")

			unset GYP_SETS["$x"]
		fi
	done
done

if [ $ENABLE_APPEND = 1 ]
then
	for x in "${!GYP_SETS[@]}"
	do
		SET=${GYP_SETS["$x"]}

		ARGS_STR="$ARGS_STR ${x}=$SET"
	done
fi

echo ${ARGS_STR}
