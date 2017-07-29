#!/bin/sh

. ./gen_dosbox_conf.sh

# TODO: Add modes: link, launch, manual <<default>>

DISC_C="\"${HOME}/Documentos/Facu/Arquitectura de Computadoras/msx88\""
EXIT=''

if [ "${1}" = link ]
then
	EXEC_NAME="$( basename ${1} )"
	DISC_D="mount D ${1%/${EXEC_NAME}*}"
	EXEC_DIR='D:/'
	EXEC_PATH="LINK88.EXE ${EXEC_DIR}${EXEC_NAME}"
	EXIT=exit
fi
if [ "${1}" = launch ]
then
	EXEC_PATH="MSX88.EXE"
	EXIT=exit
fi

dosbox_autoexec_custom="
mount C ${DISC_C}
${D}
C:
${EXEC_PATH}
${EXIT}
"

declare dosbox_{sdl_{windowresolution=1024x768,output=openglnb},render_scaler=none,cpu_cputype=486_slow,mixer_nosound=true}
gen_dosbox_conf_launch
