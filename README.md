# chromeos-simple-root
Roots a chromebook (or any other device) running chromeos. Check releases tab for more information about the current version. 
# notes
- This script assumes you are running it right after enabling developer mode so it may break if you have done the following: diable rootfs verification
- Only works on latest versions of chromeos using android 10+
# how and why to use
First of all, other automated scripts didn't work for me so I made this. Now, you will need to enable developer mode (this will delete all your files!). After that install this apk: https://github.com/tiann/KernelSU/releases/download/v0.6.7/KernelSU_v0.6.7_11210-release.apk after installation hold ctrl+alt and press t to open the crosh shell. Type "shell" and run this script by running sudo bash <script location>
# credits
Everything made by other people that was used here:
- https://github.com/tiann/KernelSU