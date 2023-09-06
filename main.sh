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
sudo reboot
