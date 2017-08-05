#!/bin/sh

#Para guvcview
#>=media-libs/opencv-3.1.0-r2:0::media

#>sys-devel/icecream-1.0.1
#=net-www/chromium-stable-52.0.2743.116

echo '
	dev-util/kBuild::SuperHeron-misc

	#No tiene staging.
<<<<<<< HEAD
        >app-emulation/wine-2.19

	# Wine fails to compile and causes strange font rendering on webkit.
	=media-libs/freetype-2.8.1
=======
        >app-emulation/wine-2.10
>>>>>>> Apply losed NotCactus.local specifics from rebasing.

	#       Qjackctrl & cadeence no andan con jack2.
#        >=media-sound/jack-audio-connection-kit-1.9.10
	>sys-kernel/linux-headers-4.13
	>sys-apps/iproute2-4.13.0

#	lxqt/*::lxde-unofficial
'
