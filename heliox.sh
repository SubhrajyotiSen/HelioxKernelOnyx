#!/bin/zsh
export ARCH=arm
export CROSS_COMPILE="/home/subhrajyoti/kernel/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-"
make clean
echo "Enter version"
read version
make cm_onyx_defconfig
make oldconfig
make -j4
echo "------Heliox Built------"
yes | cp -rf ./arch/arm/boot/zImage-dtb ../AnyKernel2/
cd ../AnyKernel2
zip -r9 Heliox-"$version".zip * -x README Heliox-"$version".zip


