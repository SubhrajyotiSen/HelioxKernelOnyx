#!/bin/zsh
export ARCH=arm
export CROSS_COMPILE="/home/subhrajyoti/kernel/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-"
make clean
make cm_onyx_defconfig
make oldconfig
make -j4
