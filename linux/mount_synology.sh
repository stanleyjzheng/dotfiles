mdadm --stop /dev/md127
mdadm -Asf && sudo vgchange -ay
mount /dev/md127 /mnt/data -o ro
mount -o remount,rw '/mnt/data'
chmod ugo+wx /mnt/data/local/Stanley
