## Configure RPM Fusion
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
### Codecs
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf update -y @core
### Multimedia
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing
sudo dnf update -y @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
#### Intel
sudo dnf install -y intel-media-driver
#### AMD
# sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
# sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
#### NVIDIA
# sudo dnf install -y libva-nvidia-driver
### DVDs
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y libdvdcss

