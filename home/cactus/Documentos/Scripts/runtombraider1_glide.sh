#!/bin/sh

#LD_LIBRARY_PATH=/tmp
#DOSBOX=/var/tmp/paludis/build/app-emulation-dosbox-glide-0.74_p20170306/work/dosbox-glide-0.74_p20170306/src/dosbox
#DOSBOX=~/dosglide.new/dosbox-glide
DOSBOX=dosbox-glide

DOSBOX_SECTIONS+=glide
glide_keys='glide'
glide_values=( 'true' )

. ./mount_iso.sh
. ./gen_dosbox_conf.sh

#DIR_GAME="${HOME}/Documentos/Instaladores y Portables/TombRaider1/TOMBRAID/"
DIR_GAME="${HOME}/.PlayOnLinux/wineprefix/TombRaider1/drive_c/TOMBRAID/"
DISC_C="\"${DIR_GAME}\""
DISC_D=$( get_iso_mountpoint )
EXEC_DIR=''
EXEC_NAME='TOMB.EXE'
EXEC_PATH="${EXEC_DIR}${EXEC_NAME}"

LOCAL_EXEC_PATH="${DIR_GAME}/${EXEC_NAME}"
mv "${LOCAL_EXEC_PATH}"{,.prev}
cp "${LOCAL_EXEC_PATH}"{.glide,}

if $( mount_iso ~/Documentos/ISOs/TombRaider1.iso )
then

	dosbox_autoexec_custom="
	mount D ${DISC_D} -t cdrom -usecd 0
	mount C ${DISC_C}
	C:
	${EXEC_PATH}
#	exit"


	echo "${dosbox_autoexec_custom}"

	declare dosbox_{sdl_{output=openglnb,fullscreen=true,fulldouble=false},render_scaler=none,cpu_{cycles=max,cputype=auto},mixer_nosound=false,midi_mididevice=default}

	gen_dosbox_conf_launch

	umount_iso
fi
echo hola
mv "${LOCAL_EXEC_PATH}"{.prev,}
