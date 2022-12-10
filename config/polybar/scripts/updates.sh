#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
	updates_arch=0
fi

if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
	updates_aur=0
fi

#updates=$((updates_arch + updates_aur))

updates=$updates_arch
updates_paru=$updates_aur

if [ "$updates" -gt 0 ]; then
	echo " $updates  $updates_paru"
else
	echo " $updates  $updates_paru"
fi
