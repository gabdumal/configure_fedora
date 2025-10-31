#!/usr/bin/env bash
set -euo pipefail

## Require a driver parameter: intel, amd or nvidia
if [ $# -lt 1 ]; then
    echo "Error: missing parameter. Usage: $0 {intel|amd|nvidia}"
    exit 1
fi

driver="${1,,}"  # lowercase

## Validate parameter before doing anything
case "$driver" in
  intel|amd|nvidia) ;;
  *)
    echo "Error: unknown driver '$1'. Allowed values: intel, amd, nvidia" >&2
    exit 2
    ;;
esac

## Configure RPM Fusion
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

### Codecs
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf update -y @core

### Multimedia
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing
sudo dnf update -y @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

case "$driver" in
  intel)
    #### Intel
    sudo dnf install -y intel-media-driver
    ;;

  amd)
    #### AMD
    sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
    sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
    ;;

  nvidia)
    #### NVIDIA
    sudo dnf install -y libva-nvidia-driver
    ;;

  *)
    echo "Error: unknown driver '$1'. Allowed values: intel, amd, nvidia"
    exit 2
    ;;
esac

### DVDs
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y libdvdcss
