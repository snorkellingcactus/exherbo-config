#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	*/* -bash-completion
	*/* -rsyslog
	media-libs/SDL:2 opengl
	games-sports/NFSIISE linguas: spanish
	app-emulation/PCSX2 wx-3.0-gtk2 providers: gtk2
'
