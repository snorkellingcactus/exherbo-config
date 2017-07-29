#!/bin/sh

echo '
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

	net-misc/connman wifi wispr

	#Para DVDStyler:
	media-libs/libmng lcms
	x11-libs/wxGTK gstreamer
	app-cdr/DVDStyler wx-3.0-gtk2

	#Para poder usar resize2fs junto a lvreduce:
	sys-fs/lvm2 fsadm

	net-wireless/wpa_supplicant nl80211

	#Para pcmanfm:
	x11-apps/pcmanfm gtk
	#x11-libs/libfm extra-only
	x11-libs/libfm gtk udisks exif
	media-libs/tiff opengl

	games-fps/smokinguns data engine smp fb
	games-fps/zandronum gl server client gtk  sound asm build_options: jobs=1
	media-sound/fmodapi development libraries

	#x11-libs/wxSVG wx-3.0-gtk2 providers: ffmpeg
	x11-libs/wxSVG wx-3.0-gtk2

	media-video/handbrake gtk3

	media/dvdauthor providers: imagemagick

	net-p2p/transmission qt5

	# para simple-scan:
	dev-libs/libgusb vapi gobject-introspection

	net-ftp/filezilla providers: -gtk3 gtk2

	media-libs/libsndfile flac

	#para minitube
	media-plugins/gst-plugins-good gstreamer_plugins: soup

	#acetoneiso:
	x11-libs/qt:4 phonon webkit
	media-libs/phonon qt4

	x11-libs/qt:4 gtk glib
	sys-auth/polkit-qt qt5
	media-gfx/gimp exif mng postcript svg tiff wmf

	media-gfx/sane-backends usb

	xfce-base/libxfce4ui gtk3

	dev-lang/python sqlite

	lxqt/lxqt-panel pulseaudio

	xfce-base/exo gtk3

	media/ffmpeg mp2 pulseaudio cd h264 hevc opengl postproc

	media-sound/rakarrack jacksession

	#Habilitar lua para las extensiones y gnutls para urls de por ej. youtube.
	media/vlc  a52 aac ass cddb dirac dvd flac gstreamer h264 hevc id3 live matroska mp2 mpc mpeg2 opus taglib va vcdinfo qt5 lua gnutls pulseaudio
	#No anda, busca muy extrañamente /usr/x86_64-pc-linux-gnu/lib/libjack.la
	#media/vlc -jack

	#cadence:
	media-sound/cadence  python_abis: 3.3
	x11-libs/qt:4 qt3support
	>media-sound/jack-audio-connection-kit-0.125.0 dbus
	x11-libs/dbusmenu-qt qt4
	dev-python/PyQt4 dbus python_abis: 3.3
	dev-python/sip python_abis: 3.3

	#DOSBOX:
	media-libs/SDL:0 dga pulseaudio
	media-libs/SDL:2 pulseaudio

	#Para minitube
	#qtscript
	media-libs/phonon qt5 pulseaudio gstreamer
	x11-libs/qtbase:5 glib gtk

	#Para sayonara player
	x11-libs/qtbase:5 sqlite pulseaudio sql
	media-plugins/gst-plugins-bad GSTREAMER_PLUGINS: soundtouch
	#Fails with more jobs.
	media-sound/sayonara ugly mtp build_options: jobs=1

	www-plugins/pipelight gnome build_options: jobs=1
	net-dns/dnsmasq dbus

	sys-devel/meson python_abis: -3.3 3.5

	#Para tint2gui:
	x11-misc/tint2 gtk

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
