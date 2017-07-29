#!/bin/sh

[ -z "${GEN_DOSBOX_CONF_TEMP_FILE}" ] && GEN_DOSBOX_CONF_TEMP_FILE=~/.dosbox/tmpconf.conf
[ -z "${DOSBOX}" ] && DOSBOX=dosbox


gen_dosbox_conf()
{
	sdl_values=( 'false' 'true' '1366X768' 'original' 'overlay' 'true' '100' 'true' 'higher,normal' 'mapper-0.74.map' 'true' )
	sdl_keys='fullscreen fulldouble fullresolution windowresolution output autolock sensitivity waitonerror priority mapperfile usescancodes'

	dosbox_values=( '' 'svga_s3' 'Pantallazos' '16' )
	dosbox_keys='language machine captures memsize'

	render_values=( '0' 'false' 'normal2x' )
	render_keys='frameskip aspect scaler'

	# cputype = pentium_slow
	cpu_values=( 'auto' 'auto' 'max' '10' '20' )
	cpu_keys='core cputype cycles cycleup cycledown'

	mixer_values=( 'false' '44100' '1024' '20' )
	mixer_keys='nosound rate blocksize prebuffer'

	midi_values=( 'intelligent' 'none' '129:0' )
	midi_keys='mpu401 mididevice midiconfig'

	sblaster_values=( 'sb16' '220' '7' '1' '5' 'true' 'auto' 'default' '44100' )
	sblaster_keys='sbtype sbbase irq dma hdma sbmixer oplmode oplemu oplrate'

	gus_values=( 'false' '44100' '240' '5' '3' 'C:\ULTRASND' )
	gus_keys='gus gusrate gusbase gusirq gusdma ultradir'

	speaker_values=( 'true' '44100' 'auto' '44100' 'true' )
	speaker_keys='pcspeaker pcrate tandy tandyrate disney'

	joystick_values=( 'auto' 'true' 'false' 'false' 'false' )
	joystick_keys='joysticktype timed autofire swap34 buttonwrap'

	serial_values=( 'dummy' 'dummy' 'disabled' 'disabled' )
	serial_keys='serial1 serial2 serial3 serial4'

	dos_values=( 'true' 'true' 'true' 'es' )
	dos_keys='xms ems umb keyboardlayout'

	ipx_values=( 'false' )
	ipx_keys='ipx'

	local SECTIONS VAR_VALUES VALUE VALUE_CUSTOM VAR_KEYS VAR_KEY_DEF VAR_KEY_USER COUNT

	DOSBOX_SECTIONS+=" sdl dosbox render cpu mixer midi sblaster gus speaker joystick serial dos ipx autoexec"

	for i in ${DOSBOX_SECTIONS}
	do
		VAR_VALUES=${i}_values

		VAR_KEYS=${i}_keys
		COUNT=0
		echo "[${i}]"

		for k in ${!VAR_KEYS}
		do
			
			VAR_KEY_USER="dosbox_${i}_${k}"

			VALUE="${!VAR_KEY_USER}"

			if [ -z "${VALUE}" ]
			then
				VAR_KEY_DEF="${VAR_VALUES}[${COUNT}]"
				VALUE=${!VAR_KEY_DEF}
			fi

			echo "${k}=${VALUE}"

			let COUNT++
		done

		VAR_KEY_USER_CUSTOM="dosbox_${i}_custom"
		echo "${!VAR_KEY_USER_CUSTOM}"
	done

	unset DOSBOX_SECTIONS
}

gen_dosbox_conf_new()
{
	gen_dosbox_conf > "${GEN_DOSBOX_CONF_TEMP_FILE}"
}

gen_dosbox_conf_free()
{
	echo
	#rm "${GEN_DOSBOX_CONF_TEMP_FILE}"
}

gen_dosbox_conf_launch()
{
	gen_dosbox_conf_new

	${DOSBOX} ${@} -conf "${GEN_DOSBOX_CONF_TEMP_FILE}"

	gen_dosbox_conf_free
}
