#!/bin/sh

/etc/paludis-shared/options.bash

echo '
	*/* -bash-completion
	*/* -rsyslog
	media-libs/SDL:2 opengl
	games-sports/NFSIISE linguas: spanish
	app-emulation/PCSX2 wx-3.0-gtk2 build_options:  symbols=preserve work=preserve

	media-libs/libsndfile flac

	# Temporary, for simplicity

	x11-libs/wxGTK providers: gtk2
x11-libs/wxGTK joystick sdl
	dev-libs/libxml2 -python

       */* python_abis: 3.6

# temp, porque falla llvm 9
dev-lang/rust internal-llvm
'
