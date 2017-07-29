#!/bin/sh

#Para guvcview
#>=media-libs/opencv-3.1.0-r2:0::media

#>sys-devel/icecream-1.0.1
#=net-www/chromium-stable-52.0.2743.116

echo '
	dev-util/kBuild::SuperHeron-misc

	#No tiene staging.
        =app-emulation/wine-1.9.23-r1
	# Da problemas con algunas builds. https://bugs.gentoo.org/show_bug.cgi?id=604802
#	=dev-util/gperf-3.1
	>x11-drivers/nvidia-drivers-304.135
#	Qjackctrl & cadeence no andan con jack2.
#	>=media-sound/jack-audio-connection-kit-1.9.10
#	>=sys-kernel/linux-headers-4.10
'
