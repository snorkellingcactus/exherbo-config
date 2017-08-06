#!/bin/sh

#Para guvcview
#>=media-libs/opencv-3.1.0-r2:0::media

#>sys-devel/icecream-1.0.1
#=net-www/chromium-stable-52.0.2743.116

echo '
	dev-util/kBuild::SuperHeron-misc

	#No tiene staging.
        >app-emulation/wine-2.13

	#       Qjackctrl & cadeence no andan con jack2.
#        >=media-sound/jack-audio-connection-kit-1.9.10
	>=sys-kernel/linux-headers-4.10
'
