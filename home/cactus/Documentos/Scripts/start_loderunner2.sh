TORUN=/tmp/.loderunner ; { echo '#!/bin/sh' ; echo 'xrandr -s 800x600' ; echo 'playonlinux --run "Lode Runner 2"'; } > ${TORUN} && chmod a+x ${TORUN} && PATH=${PATH}:/usr/i686-pc-linux-gnu/bin/ xinit ${TORUN} -- :1 -depth 16


