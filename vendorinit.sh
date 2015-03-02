#!/bin/sh


REPO_TOOL=$( which repo )
if [ ! -f "$REPO_TOOL" ] ; then
	echo "No Repo." ;
	exit
fi

repo init --depth 1 --manifest-url=https://github.com/trevd/android_vendor_toybox --manifest-name=manifest.xml --manifest-branch=master
#--group=toybox-bionic
