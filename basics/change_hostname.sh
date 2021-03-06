#!/bin/bash
if [ "$1" ]; then
    echo "$1" > /etc/hostname
    read -p "Do you want to reboot now? (y/N): "
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -- "$0" && /sbin/reboot
    fi
fi
