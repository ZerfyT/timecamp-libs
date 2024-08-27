#!/bin/bash

DEB_FILES=(
    "libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-2_amd64.deb"
    "libayatana-indicator7_0.8.4-1+deb11u2_amd64.deb"
    "libayatana-appindicator1_0.5.5-2+deb11u2_amd64.deb"
    "timecamp.deb"
)

for DEB_FILE in "${DEB_FILES[@]}"; do
    if [ -f "$DEB_FILE" ]; then
        echo "Installing $DEB_FILE..."
        sudo apt-get install -y ./"$DEB_FILE"
    else
        echo "File $DEB_FILE not found!"
        exit 1
    fi
done

echo "Copying library files to /usr/lib/x86_64-linux-gnu/..."
sudo cp libs/* /usr/lib/x86_64-linux-gnu/

echo "Installation and file copying completed."
