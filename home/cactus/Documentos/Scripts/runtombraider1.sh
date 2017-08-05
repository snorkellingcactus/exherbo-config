#!/bin/sh

. ./mount_iso.sh
. ./gen_dosbox_conf.sh

DIR_GAME="${HOME}/Documentos/Instaladores y Portables/TombRaider1/TOMBRAID/"
DISC_C="\"${DIR_GAME}\""
DISC_D=$( get_iso_mountpoint )
EXEC_DIR=''
EXEC_NAME='TOMB.EXE'
EXEC_PATH="${EXEC_DIR}${EXEC_NAME}"

if $( mount_iso ~/Documentos/ISOs/TombRaider1.iso )
then
	dosbox_autoexec_custom="
	mount D ${DISC_D} -t cdrom -usecd 0
	mount C ${DISC_C}
	C:
	${EXEC_PATH}
	exit
"

	declare dosbox_{sdl_{fullscreen=true,fulldouble=false,output=surface},render_scaler=none,mixer_nosound=false}

	gen_dosbox_conf_launch

	umount_iso
fi
