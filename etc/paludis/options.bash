#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	sys-fs/fuse python_abis: 3.6

	sys-fs/sshfs-fuse python_abis: 3.6

	net-misc/connman wifi

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
	games-fps/zandronum client gtk  sound asm

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
	media/vlc  a52 aac ass cddb dirac dvd flac gstreamer h264 hevc id3 live matroska mp2 mpc mpeg2 opus taglib va vcdinfo qt5 lua gnutls pulseaudio ffmpeg
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
	media-sound/sayonara ugly lame build_options: jobs=1

	www-plugins/pipelight gnome build_options: jobs=1
	net-dns/dnsmasq dbus

	sys-devel/meson python_abis: -3.3 3.5

	#Para tint2gui:
	media-libs/imlib2 X
	x11-libs/cairo X
	x11-misc/tint2 gtk

	#Para vinagre. Buscar visor de escritorio qt.
	#gnome-desktop/vinagre ssh
	net-dns/avahi gtk3
	#dev-libs/gtk-vnc pulseaudio

	#virtual/awk providers: mawk
	sys-libs/ncurses development

	#sys-boot/grub device-mapper
	#unitec: filter gd
	dev-lang/php pear fpm PHP_EXTENSIONS: filter gd imap xml pcre pdo-sqlite pdo-mysql mysqli  pdo-odbc unixodbc

	dev-db/mysql memcached
	#dev-lang/python build_options: jobs=4

	#openbox
	x11-libs/pango X

	#Para pcmanfm:
	x11-apps/pcmanfm gtk
	#x11-libs/libfm extra-only
	x11-libs/libfm gtk udisks exif
	media-libs/tiff opengl

	# Para lxpanel:
	x11-libs/gdk-pixbuf X


	net-dns/dnsmasq idn nls
	sys-fs/xfsprogs build_options: work=preserve
	media-sound/pulseaudio webrtc-aec gtk equalizer -oss caps jack
	media-libs/libsndfile vorbis
	x11-libs/libxkbcommon X
	x11-libs/qt:4 kde dbus opengl
	dev-lang/php:5.3::cactus libphp5.so PHP_EXTENSIONS: curl ftp ssl
	media-libs/SDL:2 opengl
	media-libs/SDL_mixer mad
	x11-drivers/xf86-video-trident xaa
	media-plugins/gst-plugins-bad opengl
	#dev-libs/libcdio cddb vcdinfo

	dev-python/dbus-python        PYTHON_ABIS: 2.7 3.3
	dev-lang/python sqlite
	x11-libs/libva opengl
	dev-libs/atk gobject-introspection
	x11-libs/gdk-pixbuf gobject-introspection
	x11-libs/pango gobject-introspection
	x11-libs/gtk+ gobject-introspection
	x11-libs/wxGTK tiff
	dev-libs/gtk-vnc pulseaudio
	gnome-desktop/vinagre ssh
	net-dns/avahi gtk3
	net-libs/webkit media providers: gtk2
	app-text/poedit providers: gtk2 -gtk3
	#x11-libs/wxGTK:3.0 providers: gtk2 -gtk3
	media-sound/audacity ffmpeg flac id3tag jack midi mp2 mp3 soundtouch vorbis
	
	net-www/links gpm

	app-cdr/libisofs xattr
	app-cdr/libburn cdio

	# netmap ¿should not be nmap?
	app-virtualization/qemu async gtk2 jemalloc opengl pulseaudio sdl2 x86 xattr usb-passthrough
'
