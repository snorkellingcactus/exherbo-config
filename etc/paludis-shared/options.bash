#!/bin/sh

echo '
	*/* -man -development -readline build_options: symbols=strip -recommended_tests dwarf_compress jobs=9 LIBC: glibc -musl parts: -documentation 
	*/* targets: i686-pc-linux-gnu
	*/* -systemd consolekit
	*/* providers: -systemd eudev rsyslog
	#Temporal, para eliminar systemd:
	#sys-apps/util-linux -udev
	*/* mmx sse X86_CPU_FEATURES: mmx sse AMD64_CPU_FEATURES: mmx sse
	*/* avahi X -branding -bash-completion -vim-syntax
	*/* gstreamer_plugins: ogg cdda theora vorbis libvisual xv pango alsa flac jack pulseaudio taglib speex vpx wavpack musepack resin sndfile faac faad mpg123 cdio dvdread h264 lame mad mpeg2 mp2 mjpeg
	*/* LINGUAS:		-* es_LA es_AR es_ES es es_ar es-es es-la
	*/* INPUT_DEVICES:	-* evdev keyboard

	app-text/poppler lcms cairo
	net-dns/avahi dbus dns_sd
	app-emulation/wine opengl gstreamer mono staging s3tc pulseaudio -vaapi -scanner -samba -oss openal
	sys-sound/alsa-plugins pulseaudio

	#Para media/mpv:
	media/mpv cd dvd dvd-menu opengl pulseaudio screensaver drm
	media-libs/libass fontconfig
'
