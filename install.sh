echo "Create filesystem"
(echo p; echo n; echo p; echo ""; echo ""; echo ""; echo p; echo a; echo p; echo w) | fdisk /dev/sda
mkfs.ext4 /dev/sda1
mkdir /mnt/slax
mount /dev/sda1 /mnt/slax
echo "Copy Slax files"
cp -Rpv /run/initramfs/memory/data/slax/. /mnt/slax
echo "Install Slax"
cd /mnt/slax/boot
sed -ie 's/read junk//g' bootinst.sh
./bootinst.sh
echo "Shutdown"
echo "Please remove Slax media before restart"
(sleep 5 && shutdown now) &