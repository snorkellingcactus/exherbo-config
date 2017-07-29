#!/bin/sh

echo '
	*/* build_options: symbols=strip jobs=3 LIBC: glibc -musl parts: -documentation
	*/* targets: x86_64-pc-linux-gnu i686-pc-linux-gnu
	*/* -systemd consolekit
        */* providers: -systemd eudev rsyslog consolekit
        #Temporal, para eliminar systemd:
        #sys-apps/util-linux -udev
	*/* mmx sse sse2 3dnow 3dnowext sse4a X86_CPU_FEATURES: mmx sse sse2 3dnow 3dnowext sse4a AMD64_CPU_FEATURES: mmx sse sse2 3dnow 3dnowext sse4a
	*/* avahi X abi_x86_64 -branding -bash-completion -vim-syntax
	#*/* gles1 gles2 opengl openal xa xvmc osmesa g3dvl drm gallium openvg
	*/* LINGUAS:		-* es_LA es_AR es_ES es es_ar es-es es-la
#	*/* VIDEO_CARDS:	-* intel
#	*/* ALSA_CARDS:		-* hda-intel
	*/* INPUT_DEVICES:	-* evdev keyboard
	#*/* qt5
	*/* nsplugin
	*/* Build_Options: -recommended_tests

	#Requerido por la constraint opencl de mesa i915
	#xa xvmc
	#Gallium:
#	x11-dri/mesa video_drivers: intel gallium-swrast
	# gl-vendor:unritten
	# video_drivers: gallium-swrast
	# x11-dri/mesa llvm llvm-static
	# Classic:
	# x11-dri/mesa video_drivers: intel 

#	x11-dri/libdrm video_drivers: intel
	#prueba smokinguns:
	x11-dri/mesa texture-float

	#Segun la guia multiarch de exherbo http://exherbo.org/docs/multiarch/multiarch.html
	#sys-devel/gcc -threads

#	sys-devel/gcc graphite

	#Para webkit-2.11?
	dev-lang/llvm static

	app-text/poppler lcms cairo
	net-dns/avahi dbus dns_sd

	#Para git
	dev-lang/swig perl
	dev-scm/subversion perl

	app-emulation/wine opengl gstreamer mono staging s3tc pulseaudio -vaapi -scanner -samba -oss openal mp3 gsm tiff
	sys-sound/alsa-plugins pulseaudio
	media-libs/openal pulseaudio

	sys-devel/meson python_abis: 3.5

	sys-apps/paludis search-index xml
'
