#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	dev-libs/libdbusmenu gtk2
	dev-libs/libindicator gtk2
	dev-libs/libappindicator gtk2

	dev-util/gitlab-runner docker build_options: jobs=1

	app-crypt/gpgme qt5
	sys-auth/qtkeychain qt5

	x11-libs/libnotify gobject-introspection
	x11-libs/qtwebkit qtmultimedia

	app-misc/ca-certificates ca-trust

	dev-python/pluggy python_abis: 2.7 3.4
	dev-python/attrs python_abis: 2.7 3.4
	dev-python/PySDL2 python_abis: -2.7 3.4
	games-emulation/mupen64plus-ui-python python_abis: -2.7 3.4
	games-emulation/mupen64plus-qt qt5
	app-arch/quazip qt5

	dev-python/notify2 python_abis: 3.4

	net-im/scudcloud python_abis: 3.4
	dev-python/jsmin:0::cactus python_abis: -2.7 3.4

	net-utils/s6-networking providers: bearssl
	dev-cpp/poco crypto data json net netssl sqlite util xml -pdf
	sys-fs/ntfs-3g_ntfsprogs extras

	base/libblockdev mdraid cryptsetup

	net-analyzer/wireshark qt5

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
	games-fps/urban-terror data server engine smp
	games-fps/zandronum gl client gtk sound asm build_options: jobs=1

	>=games-fps/zandronum-3.0 server

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
	dev-python/PyQt4 dbus
	x11-libs/qt:4 qt3support
	>media-sound/jack-audio-connection-kit-0.125.0 dbus
	x11-libs/dbusmenu-qt qt4

	#DOSBOX:
	media-libs/SDL:0 dga pulseaudio
	media-libs/SDL:2 pulseaudio

	#Para minitube
	#qtscript
	media-libs/phonon qt5 pulseaudio gstreamer
	x11-libs/qtbase:5 glib gtk -journald

	#Para sayonara player
	x11-libs/qtbase:5 sqlite pulseaudio sql
	media-plugins/gst-plugins-bad GSTREAMER_PLUGINS: soundtouch eglgles
	#Fails with more jobs.
	media-sound/sayonara ugly mtp build_options: jobs=1

	www-plugins/pipelight gnome build_options: jobs=1
	net-dns/dnsmasq dbus

	#Para tint2gui:
	x11-misc/tint2 gtk

	*/* jack vorbis theora vpx mikmod mod mp3 mp4 ogg speex  midi fluidsynth timidity faac aacplus cdio fuse realtime libsamplerate amr sndfile modplug
	*/* threads schroedinger libass smp wavpack musepack ffmpeg vcd lame pfd pdf quicktime -bluetooth scanner fbcon aalib directfb libcaca zeroconf
	*/* device-mapper nls threads providers: jpeg-turbo -ijg-jpeg
	*/* gstreamer_plugins: ogg cdda theora vorbis libvisual xv pango alsa flac jack pulseaudio taglib speex vpx wavpack musepack resin sndfile faac faad mpg123 cdio dvdread h264 lame mad mpeg2 mp2 mjpeg
	*/* targets: x86_64-pc-linux-gnu i686-pc-linux-gnu
	*/* ABI_X86: 32 64 amd64_cpu_features: sse3 ssse3

	net-misc/tucan gtk

	#gconf? cups
	net-www/chromium-stable pulseaudio
	net-www/chromium-browser pulseaudio
	x11-libs/gtk+ cups

	#empathy
	base/libgee gobject-introspection
	net-im/telepathy-glib vapi gobject-introspection
	net-im/folks telepathy

	#megasync
	x11-libs/qt:4 dbus

	#Para vinagre. Buscar visor de escritorio qt.
	#gnome-desktop/vinagre ssh
	net-dns/avahi qt4
	#dev-libs/gtk-vnc pulseaudio

	#Para dooble
	x11-libs/qtwebengine pulseaudio

	x11-libs/libva opengl

	#Virtualbox
	# wine
	app-virtualization/virtualbox-ose pulseaudio opengl extensions additions qt5
	x11-libs/qt:4::kde opengl
	#dev-util/kBuild:0::SuperHeron-misc scm

	#Para OpenShot
	dev-python/PyQt5 webkit multimedia sql
	media-libs/libopenshot python system-jsoncpp
	net-libs/libzmq select

	media-sound/fluidsynth pulseaudio

	net-libs/webkit-gtk opengl media

	media-libs/openal pulseaudio

	media-sound/mixxx pulseaudio

	net-misc/connman wifi wispr
	x11-apps/dzen2 xft gadgets xpm

	#Para que compile la primera vez.
	dev-lang/icedtea7

	#app-text/poedit providers: gtk2 -gtk3

	#Para wxPython, para playonlinux:
	x11-libs/wxGTK:2.8::desktop tiff 
	#x11-libs/wxGTK:3.0 providers: gtk2 -gtk3

	#Prueba para cherrytree
	#gnome-desktop/gtksourceview gobject-introspection glade
	#dev-util/glade python gobject-introspection

	#Prueba para automontar dispositivos en pcmanfm:
	gnome-desktop/gvfs udisks

	#Prueba. Para ver si le da interfaz.
	media-gfx/graphviz gtk

	#Para orca:
	#A futuro...(No está echo el exhere todavía)
	#app-speech/speechd flite

	app-speech/speechd espeak pulseaudio python python_abis: 2.7 3.4
	app-speech/espeak pulseaudio
	gnome-bindings/pygobject:3 PYTHON_ABIS: 2.7 3.4
	gnome-bindings/pygobject:2 PYTHON_ABIS: 2.7 3.4
	dev-python/dbus-python	PYTHON_ABIS: 2.7 3.4
	dev-python/pyxdg PYTHON_ABIS: 2.7 3.4
	dev-libs/at-spi2-core gobject-introspection
	x11-libs/gtk+:3 gobject-introspection
	#como consecuencia de gtk+:
	dev-libs/atk:0 gobject-introspection
	x11-libs/gdk-pixbuf:2.0	gobject-introspection
	x11-libs/pango:0	gobject-introspection
	gnome-desktop/gsettings-desktop-schemas gobject-introspection

	x11-libs/gdk-pixbuf::i686-pc-linux-gnu -gobject-introspection


	#*/* PYTHON_ABIS: 3.5

	sys-apps/lshw gtk

	sys-apps/paludis search-index xml

	#dev-libs/libclc[~scm]

	media-sound/deadbeef pulseaudio gtk aac flac
	x11-apps/volumeicon alsa

	x11-apps/cairo-dock build_options: work=preserve
	x11-plugins/cairo-dock-plugins::cactus dbusmenu disks exif force-icon-in-menus global-menu gmenu impulse memenu sound-effects build_options: work=preserve
	#x11-plugins/cairo-dock-plugins::cactus applet_weblets

	#Prueba haber si cairo plugins compila:
	#dev-libs/vte gobject-introspection
	#dev-libs/atk gobject-introspection
	#x11-libs/gdk-pixbuf gobject-introspection
	#x11-libs/pango gobject-introspection
	#x11-libs/gtk+ gobject-introspection

	x11-apps/compton opengl
	#+staging +gtk3 +vaapi
	#app-emulation/wine gtk3 multibuild_c: 32

	#11-03-2016: Por problema circular con jsonpp
	#Esto hace que use algo de un jsoncpp "interno"
	#entonces paludis no tiene que instalarlo.
	#sys-devel/cmake bootstrap

	#Para webkit-2.11
	dev-lang/llvm static
	media-plugins/gst-plugins-bad GSTREAMER_PLUGINS: opengl

	#media-libs/mesa -* video_cards_i915 abi_x86_64

	# Para libreoffice:
	app-office/libreoffice gtk pdfimport
	x11-libs/harfbuzz graphite
	dev-libs/xmlsec nss

	#Para vivaldi-snapshot:
	app-text/poppler cairo glib
	net-www/vivaldi-snapshot system-ffmpeg system-gl linguas: es-419 es_MX es_PE en

	#para nm-applet
	#net-apps/NetworkManager wifi
	#net-misc/wicd gtk
	#net-apps/NetworkManager connection-check ppp
	net-apps/NetworkManager compat-libs providers: nss

	net-plugins/lightspark nsplugin tightspark pulseaudio

	gnome-desktop/file-roller archive

	dev-libs/llibcdio cddb vcdinfo
	media-sound/jack-audio-connection-kit alsa

	#Para cadence
	#dev-libs/libxml2 PYTHON_ABIS: -2.7 3.4
	app-crypt/qca:2 qt4

	media-sound/pulseaudio webrtc-aec gtk equalizer -oss caps
	media-libs/libcanberra pulseaudio 

	#Linea comentada porque fuerza a actualizar ffmpeg entrando en conflicto con vlc (Requieren distintos slots).
	media-plugins/gst-libav system-ffmpeg

	media/libav h264 hevc cd amd64_cpu_features: ssse3

	#Temporal, para wine ::i686-pc-linux-gnu
	#sys-apps/dbus -systemd
	#=sys-apps/util-linux-2.28:0::arbor -udev -systemd providers: -systemd
	#=sys-apps/pciutils-3.5.1:0::arbor -udev providers: -systemd options: -udev


	net-libs/webkit gtk media opengl
	#net-libs/webkit providers: gtk2 -gtk3
	#net-libs/webkit-gtk media opengl
	net-www/firefox pulseaudio gstreamer -oss libproxy eme
	#net-www/firefox providers: -gtk3 gtk2
	net-www/firefox build_options: work=preserve

	#Para eviacam:
	media-libs/opencv gtk v4l

	#Para cheese:
	#x11-libs/clutter gdk

	#Para guvcview
	media-libs/portaudio alsa
	media-video/guvcview pulseaudio

	media-sound/cmus flac wav cue pulseaudio opus aac

	#mate-control-center:
	sys-apps/colord polkit
	x11-libs/clutter gdk
	gnome-desktop/libsoup gobject-introspection

	net-www/uzbl tabbed

	xfce-base/xfce4-settings libinput sound-settings keyboard-layout cursor-themes

	#Requerido por el flag speex
	 media-sound/vorbis-tools -speex

	media-libs/libwebp X86_CPU_FEATURES: sse2

	media-sound/jack_capture gtk

	app-shells/dash

	games-fps/dhewm3 curl core base sdl2
	games-fps/dhewm3 build_options: work=preserve

	gnome-desktop/gnome-media gstreamer-properties

	lxde-desktop/lxpolkit gtk3
	app-text/poedit providers: -gtk2 gtk3
	x11-libs/wxGTK:3.0 providers: gtk2 gtk3
	net-libs/webkit	providers: -gtk2 gtk3

	app-misc/rainlendar pro


	app-antivirus/clamav unrar
	app-arch/libarchive lz4


	#para gnomenu, cardapio:
	#quitar de world: 
	#pyxdg
	dev-libs/keybinder python

	sys-devel/gdb guile

	#mjpegtools, no compila:
	media-video/mjpegtools -quicktime


	#go
	dev-lang/go bootstrap

	sys-libs/glibc multiarch

	media-sound/a2jmidid build_options: jobs=1

	# dbus requiere jack2.
	media-sound/qjackctl dbus

	#stuntrally:
	dev-games/mygui ogre
	dev-libs/ogre freeimage boost opengl cg archives
	games-sports/stuntrally game editor
	sci-physics/bullet bullet3 extras


	games-sports/q3rally engine server data smp fb
	net-www/links gpm

	<=dev-lang/php-7 libphp5.so libphp5.a php_extensions: gd xml ftp curl ssl 
	#<=dev-lang/php-7 build_options: work=preserve
	#dev-games/raydium build_options: work=preserve

	#app-text/cherrytree build_options: work=preserve
	#app-cdr/DVDStyler build_options: work=preserve

	dev-perl/Tk build_options: jobs=1

	#redeclipse:
	games-fps/redeclipse client server data build_options: work=preserve
	media-libs/SDL_mixer mad
	media-libs/SDL:2 opengl

	games-strategy/megaglest editor streflop videos engine data sdl2

	#spring
	media-libs/DevIL opengl tiff

	x11-wm/fvwm shape xrender xft png svg xcursor perl sm


	#Para dracut
	sys-apps/coreutils xattr

	#games-strategy/spring ai default debug custom-cflags build_options: symbols=preserve work=preserve
	games-strategy/spring ai default sound streflop threaded
	games-strategy/springlobby sound gstreamer notifications

	games-strategy/0ad lobby


	# dev-util/itstool python_abis: -2.7 3.4

	# Para PeaZip:
	dev-lang/fpc source
	#dev-lang/lazarus qt
	dev-lang/lazarus nogui
	app-arch/peazip qt4

	lxqt/lxqt-l10n libfm-qt liblxqt lxqt-about lxqt-config lxqt-powermanagement lxqt-runner lxqt-session compton-conf libfm-qt liblxqt lximage-qt lxqt-about lxqt-admin lxqt-config lxqt-globalkeys lxqt-notificationd lxqt-panel lxqt-policykit lxqt-powermanagement lxqt-runner lxqt-session lxqt-sudo obconf-qt lxqt-openssh-askpass pavucontrol-qt pcmanfm-qt qterminal lxqt-policykit-agent build_options: recommended_tests

	games-fps/iortcw engine data linguas: espanol

	media-sound/ardour lv2 linuxvst optimize
	sys-fs/squashfs-tools xs lzo lz4

	games-fps/doomsday fmod client

	games-emulation/mupen64plus-core asm
	# Para mupen:
#	dev-python/PyQt5 dbus

	app-emulation/dosbox-glide glide alsa

	media-sound/qtractor lv2

	dev-python/pytest python_abis: 2.7 3.4

	dev-python/py python_abis: 2.7 3.4

	media-sound/sox dlna
	media-sound/darkice alsa

	media-sound/hydrogen lash ladspa lrdf pulseaudio rubberband shared

	dev-lang/node system-openssl

	# Para templ.co
	dev-db/postgresql postgresql_extensions: hstore
	dev-lang/ruby:2.3 readline

	# Prueba para ver si usa webkit:4.0
	net-www/midori webkit2

	# Enable google hangouts screen share.
	x11-server/xorg-server record
'
