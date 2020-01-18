#!/bin/sh

echo '
	*/* amd64 ~amd64
	
	#No compila:
	#=dev-libs/glib-2.48.0-r1 -*

	#>sys-apps/systemd-228-r2:0 -*
	#sys-apps/systemd-228-r2:0::arbor *

	#=gnome-desktop/gobject-introspection-1.46.0 -*

	gnome-desktop/baobab *

	x11-apps/compton *
	=media-sound/jack-audio-connection-kit-1.9.10 *

	media-sound/pulseaudio-applet:0::pyro scm
	
	#Errores con plugins en vlc:

#	dev-lang/lua:5.2::arbor -*
	
	#gnome-system-monitor::gnome *

	#No usados:

	*/*::gentoo -*
	#dev-libs/ocl-icd::gentoo *

	dev-libs/ocl-icd::woutershep -*
	
	#Porque requiere glib-2.48.0-r1 el cual no compila
	#>gnome-desktop/gtksourceview-3.18.2-r1 -*

	app-arch/xz-utils:0::gentoo amd64
	app-admin/eselect:0::gentoo amd64
	app-eselect/eselect-opencl:0::gentoo amd64
	dev-lang/llvm scm
	#sys-apps/runit *
	#11-03-2016: Para poder instalar openbox
	#dev-libs/libclc:0::scientific *

	ftp-servers/proftpd ~amd64
	games-sports/NFSIISE ~x86
	media-sound/ardour ~x86
	app-emulation/PCSX2 ~x86
'
