#!/bin/sh

echo '
	=media/ffmpeg-3.0.1:0::media
	net-misc/connman scm
	net-misc/connman-ui-gtk scm
	x11-apps/dzen2 scm
	#Para virtualbox:

	dev-util/kBuild:0::SuperHeron-misc scm
	#dev-util/kBuild:0::cactus scm

	#Por problemas con ffmpeg.

	media-sound/cmus scm

	media-sound/mixxx scm
	#Porque fuerza a actualizar ffmpeg entrando en conflicto con vlc (Requieren distintos slots).
	#=media-plugins/gst-libav-1.8.0:0::media


	media-video/guvcview scm
	net-www/dwb scm
	net-www/uzbl scm

	media-libs/mac-port:0::exhereses-cn

	media-libs/opencv *


	media-sound/jack-audio-connection-kit testing

#	media-sound/sayonara scm
#	games-fps/zandronum scm
	dev-lang/perl security
	#https://github.com/dracutdevs/dracut/issues/118

	sys-boot/dracut scm
	#x11-dri/mesa scm

	media-sound/pulseaudio-applet::cactus scm
	#Para zfs:
	#sys-fs/zfs scm
	#sys-libs/spl scm


	=app-benchmarks/bonnie++-1.97
	media-libs/FreeImage broken

	dev-lang/php security
#	games-sports/stuntrally scm
#	games-sports/stuntrally-tracks scm

	x11-drivers/xf86-video-intel scm

	games-strategy/0ad testing
	games-fps/ioquake3 scm

	net-wireless/rtl8192se scm
	<=x11-libs/qtwebkit-5.8.0-r1
'
