#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	sys-fs/fuse python_abis: 3.6

	sys-fs/sshfs-fuse python_abis: 3.6

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

	games-fps/smokinguns data server engine smp fb
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

	#Para tint2gui:
	x11-misc/tint2 gtk
'
