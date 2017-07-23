#!/bin/bash
set -e
##############################################
##
## Compile kernel
##
##############################################
if [ -z $ROOT ]; then
	ROOT=`pwd`
fi
# Platform
if [ -z $PLATFORM ]; then
	PLATFORM="OrangePiH5_PC2"
fi
# Cleanup
if [ -z $CLEANUP ]; then
	CLEANUP="0"
fi
# kernel option
if [ -z $BUILD_KERNEL ]; then
	BUILD_KERNEL="0"
fi
# module option
if [ -z $BUILD_MODULE ]; then
	BUILD_MODULE="0"
fi
# Knernel Direct
LINUX=$ROOT/kernel
# Compile Toolchain
TOOLS=$ROOT/toolchain/gcc-linaro-aarch/bin/aarch64-linux-gnu-
# OUTPUT DIRECT
BUILD=$ROOT/output




if [ $CLEANUP = "1" ]; then
	make -C $LINUX ARCH=arm64 CROSS_COMPILE=$TOOLS clean
	echo -e "\e[1;31m Clean up kernel \e[0m"
fi

if [ ! -f $LINUX/.config ]; then
	make -C $LINUX ARCH=arm64 CROSS_COMPILE=$TOOLS ${PLATFORM}_linux_defconfig
	echo -e "\e[1;31m Using ${PLATFORM}_linux_defconfig \e[0m"
fi

if [  -f $LINUX/.config ]; then
	make -C $LINUX ARCH=arm64 CROSS_COMPILE=$TOOLS menuconfig
fi







