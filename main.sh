if ! command -v wget &> /dev/null
then
    echo "wget is not installed."
    exit
fi
if ! command -v unzip &> /dev/null
then
    echo "unzip is not installed."
    exit
fi

wget https://github.com/tiann/KernelSU/suites/15535949965/artifacts/886691235
unzip kernel-ARCVM-x86_64-5.10.178.zip