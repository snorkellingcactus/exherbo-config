#!/bin/sh

echo '
	sys-devel/meson python_abis: 3.4 -3.5 -3.6
	sys-fs/fuse python_abis: 3.4
	sys-fs/sshfs-fuse python_abis: 3.4
	app-office/libreoffice python_abis: 3.4
	media-libs/libopenshot python_abis: 3.4
	media-video/openshot python_abis: 3.4
	dev-python/pyzmq python_abis: 3.4
	dev-python/httplib2 python_abis: 3.4
	dev-python/requests python_abis: 3.4
	dev-python/PyQt5 python_abis: 3.4
	dev-python/chardet python_abis: 3.4
	dev-python/cryptography python_abis: 3.4
	dev-python/idna python_abis: 3.4
	dev-python/pyopenssl python_abis: 3.4
	dev-python/urllib3 python_abis: 3.4
	dev-python/sip python_abis: 3.4
	dev-python/six python_abis: 3.4
	dev-python/cffi python_abis: 3.4
	dev-python/packaging python_abis: 3.4
	dev-python/asn1crypto python_abis: 3.4
	dev-python/pycparser python_abis: 3.4
	dev-python/pyparsing python_abis: 3.4
	media-sound/cadence python_abis: 3.4
	dev-python/PyQt4 python_abis: 3.4

	dev-python/pytest-runner python_abis: 3.4
	dev-python/certifi python_abis: 3.4
	dev-python/setuptools python_abis: 3.4
	dev-python/setuptools_scm python_abis: 3.4

	*/* python_abis: -3.3
	*/* -man -development -readline build_options: symbols=strip -recommended_tests dwarf_compress jobs=9 LIBC: glibc -musl parts: -documentation
	*/* targets: x86_64-pc-linux-gnu i686-pc-linux-gnu
	*/* -systemd consolekit
	*/* providers: -systemd eudev rsyslog
	#Temporal, para eliminar systemd:
        #sys-apps/util-linux -udev
	*/* mmx sse sse2 sse3 ssse3 X86_CPU_FEATURES: mmx sse sse2 sse3 ssse3 AMD64_CPU_FEATURES: mmx sse sse2 sse3 ssse3
	*/* avahi X abi_x86_64 -branding -bash-completion -vim-syntax
	*/* gstreamer_plugins: ogg cdda theora vorbis libvisual xv pango alsa flac jack pulseaudio taglib speex vpx wavpack musepack resin sndfile faac faad mpg123 cdio dvdread h264 lame mad mpeg2 mp2 mjpeg
	*/* nsplugin
	*/* LINGUAS:		-* es_LA es_AR es_ES es es_ar es-es es-la
	*/* INPUT_DEVICES:	-* evdev keyboard synaptics
	*/* VIDEO_CARDS:	-* intel
	*/* ALSA_CARDS:		-* hda-intel

	#Para webkit-2.11?
	dev-lang/llvm static

	app-text/poppler lcms cairo
	net-dns/avahi dbus dns_sd
	app-emulation/wine opengl gstreamer mono staging s3tc pulseaudio -vaapi -scanner -samba -oss openal
	sys-sound/alsa-plugins pulseaudio
	media-libs/openal pulseaudio

	#Para media/mpv:
	media/mpv cd dvd dvd-menu opengl pulseaudio screensaver
	media-libs/libass fontconfig

	#Requerido por la constraint opencl de mesa i915
	#xa xvmc
	#Gallium:
	x11-dri/mesa video_drivers: intel gallium-swrast
	# gl-vendor:unritten
	# video_drivers: gallium-swrast
	# x11-dri/mesa llvm llvm-static
	# Classic:
	# x11-dri/mesa video_drivers: intel 

	x11-dri/libdrm video_drivers: intel
	#prueba smokinguns:
	x11-dri/mesa texture-float

	#Segun la guia multiarch de exherbo http://exherbo.org/docs/multiarch/multiarch.html
	#sys-devel/gcc -threads

	sys-devel/gcc graphite

	#Para git
	dev-lang/swig perl
	dev-scm/subversion perl

	sys-apps/paludis search-index xml
'
