echo "Welcome to kernelSu rooting assistant 3000! Entering root shell"
sudo bash
sleep 5
cd /home/chronos/user/Downloads
if ! command -v wget &> /dev/null
then
    echo "wget is not installed. Installing"
    sleep 3
    apt-get install wget
    if ! command -v wget &> /dev/null
    then
    echo "critical error. Aborting"
    exit
    fi
fi
if ! command -v unzip &> /dev/null
then
    echo "unzip is not installed. Installing"
    sleep 3
    apt-get install unzip
    if ! command -v unzip &> /dev/null
    then
    echo "critical error. Aborting"
    exit
    fi
fi
echo "Making the root filesystem writable..."
sleep 3
/usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 2

echo "Downloading kernel..."
sleep 1
wget https://github.com/tiann/KernelSU/suites/15535949965/artifacts/886691235
unzip kernel-ARCVM-x86_64-5.10.178.zip
echo "Downloaded."
sleep 3
cd /opt/google/vms/android
echo "Making kernel backup"
mv vmlinux vmlinux.orig
echo "IMPORTANT. Press ctrl+c to stop this script, otherwise it will continue in 5 seconds"
sleep 5
echo "Patching kernel"
cp /home/chronos/user/Downloads/kernel-ARCVM-x86_64-5.10.178/bzImage ./vmlinux
sudo reboot
