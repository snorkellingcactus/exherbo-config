#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	*/* -bash-completion
	*/* -rsyslog

	# To break a dependency cycle
#        sys-apps/systemd -udev
#        sys-apps/dbus -systemd
#        sys-apps/pciutils -udev
#        sys-apps/util-linux -udev

#	*/* -udev -systemd
	x11-drivers/nvidia-drivers -* plat_x86
	media-libs/SDL:2 opengl
       games-sports/NFSIISE linguas: spanish
'
