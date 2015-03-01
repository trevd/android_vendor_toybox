#!/bin/bash

clonerepo()
{
	local GIT_URL="https://android.googlesource.com/platform/$1" ;
	local GIT_CLONE_ARGS="--single-branch --depth 1 --branch master";
	local GIT_BIN=$( which git ) || git
	echo "$GIT_BIN clone $GIT_CLONE_ARGS $GIT_URL" ;
	$GIT_BIN clone $GIT_CLONE_ARGS $GIT_URL $1

}


clonerepo system/core
clonerepo system/extras
#mv system/extras/ext4_utils system/extras
clonerepo build
clonerepo prebuilts/qemu-kernel
clonerepo prebuilts/gcc/linux-x86/x86/x86_64-linux-android-4.8
clonerepo prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9
clonerepo prebuilts/clang/linux-x86/host/3.6
clonerepo libnativehelper
clonerepo bionic
clonerepo hardware/libhardware_legacy
clonerepo hardware/libhardware
clonerepo external/jemalloc
clonerepo external/libunwind
clonerepo external/toybox
clonerepo external/mksh
clonerepo external/pcre
clonerepo external/libcxxabi
clonerepo external/zlib
clonerepo external/libnl
clonerepo external/libcxx
clonerepo external/libselinux
clonerepo external/compiler-rt
rm -rf hardware/libhardware_legacy/audio
rm -rf system/core/healthd
rm -rf  system/extras/tests
cp -f build/core/root.mk Makefile

cd external/zlib
git fetch https://android.googlesource.com/platform/external/zlib refs/changes/50/137050/1
git cherry-pick FETCH_HEAD

