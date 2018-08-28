echo "   Linux password reset by WERTH"
echo "-----------------------------------"

if [[ $1 -eq '-r' ]]
then
	echo "RUN"
	ls /home/*
	echo "Available Users : "
	awk -F':' '{print "\t"$1}' /etc/passwd
	read -p "Enter username to reset password for [root] : " user
	if [[ $user == '' ]]
	then 
		user="root"
	fi 
	echo "Changing Password for User: $user"
	# mount -o remount,rw /
	echo ""
	echo "Enter drive[Linux] Name (Ex. /dev/sda6), Make sure it's correct else it may damage your file system : "
	mount /dev/sda6 /mnt 
	chroot /mnt
else
	echo ""
	echo "	Instructions"
	echo "	1. First Live Run the Linux From External PENDRIVE"
	echo "	2. Then Run This Script with ./linuxPassReset.sh -r"
	echo ""
	echo "	Options:"
	echo "		-r run program"
	echo ""
fi

