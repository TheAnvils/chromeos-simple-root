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
