MOUNT_POINT=~/.mount_point

mount_iso()
{
	umount_iso

	fuseiso "${1}" "${MOUNT_POINT}"
}

umount_iso()
{
	mkdir -p "${MOUNT_POINT}"
	mountpoint -q "${MOUNT_POINT}" && fusermount -u "${MOUNT_POINT}"
}
get_iso_mountpoint()
{
 echo "${MOUNT_POINT}"
}
