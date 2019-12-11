#!/bin/sh

/etc/paludis-shared/package_unmask.bash

echo '
	media-sound/MuseScore scm
	app-cdr/acetoneiso pending-removal
	dev-libs/bearssl testing
	games-strategy/spring *
	mail-client/trojita scm
	x11-server/xorg-server security
	distribution/steam broken

	virtual/jdk:10.0
	virtual/jre:10.0

        lxqt/lxqt-l10n pending-removal
'
