USER=$(whoami)
if [ $USER = "root" ] ; then
	if [ "$(stat -c %d:%i /)" != "$(stat -c %d:%i /proc/1/root/.)" ] ; then
  		echo "( chroot )"
	fi
fi
