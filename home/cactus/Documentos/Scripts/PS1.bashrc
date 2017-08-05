#!/bin/sh

is_it_a_chroot()
{
        USER=$(whoami)
        if [ $USER = "root" ] ; then
                if [ "$(stat -c %d:%i /)" != "$(stat -c %d:%i /proc/1/root/.)" ] ; then
                        echo "( chroot )"
                fi
	fi
}

HASH='\[\033[32m\]$\[\033[m\]';

if [ $( whoami ) = "root" ] ; then
	HASH='\[\033[31m\]#\[\033[m\]'
fi

PS1="$( is_it_a_chroot )\[\033[35m\]\t\[\033[m\]_\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h \[\033[33;1m\]\w\[\033[m\] - $HASH:"
