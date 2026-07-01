#!/usr/bin/env bash

set -oeux pipefail

echo "Running DMS and HHD Setup Routine..."

mkdir -p /etc/skel/.config/niri/

HOME=/etc/skel dms setup

mkdir -p /usr/lib/systemd/user-preset/
echo "enable dms.service" >> /usr/lib/systemd/user-preset/99-dms.preset
