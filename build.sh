#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

export BME280_OVERRIDE_SRCDIR=/home/lynchrl/src/MSCS/msee-embedded-linux/final-project-lynchrl-src

set -e 
cd `dirname $0`

if [ ! -e buildroot/.config ]
then
	echo "MISSING BUILDROOT CONFIGURATION FILE"

	if [ -e ${AESD_MODIFIED_DEFCONFIG} ]
	then
		echo "USING ${AESD_MODIFIED_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT}
	else
		echo "Run ./save_config.sh to save this as the default configuration in ${AESD_MODIFIED_DEFCONFIG}"
		echo "Then add packages as needed to complete the installation, re-running ./save_config.sh as needed"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_DEFAULT_DEFCONFIG}
	fi
else
	echo "USING EXISTING BUILDROOT CONFIG"
	echo "To force update, delete .config or make changes using make menuconfig and build again."
	# If first arg is "local", then set BME280_OVERRIDE_SRCDIR.
	if [ "$1" = "local" ]; then
		make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BME280_OVERRIDE_SRCDIR=${BME280_OVERRIDE_SRCDIR}
	else
		make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
	fi
fi
