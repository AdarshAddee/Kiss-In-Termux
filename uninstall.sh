#!/bin/bash

# Feeling bad as you want to uninstall kiss-in-termux!
# hope you enjoyed this tool and use this tool again!

if [ -f /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
  rm /data/data/com.termux/files/usr/etc/bash.bashrc
fi

if [[ -f /data/data/com.termux/files/usr/etc/Kiss-In-Termux/bash.bashrc_old ]]; then
	cp -f /data/data/com.termux/files/usr/etc/Kiss-In-Termux/bash.bashrc_old /data/data/com.termux/files/usr/etc/bash.bashrc;
fi

if [ ! -d "/data/data/com.termux/files/usr/etc/Kiss-In-Termux" ]; then
	rm "/data/data/com.termux/files/usr/etc/Kiss-In-Termux/*"
fi

if [ -d "/data/data/com.termux/files/usr/etc/Kiss-In-Termux" ]; then
	rmdir "/data/data/com.termux/files/usr/etc/Kiss-In-Termux"
fi

if [[ -f "/data/data/com.termux/files/usr/bin/kiss-in-termux" ]]; then
	rm /data/data/com.termux/files/usr/bin/kiss-in-termux
fi

pkg uninstall toilet figlet cowsay ruby -y

clear

echo "Delete Kiss-In-Termux Directory To delete this permanently from your device"



