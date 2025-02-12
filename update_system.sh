## Update package
sudo dnf update -y

## Remove default packages
sudo dnf remove gnome-boxes -y
sudo dnf remove gnome-connections -y
sudo dnf remove gnome-maps -y
sudo dnf remove gnome-tour -y
sudo dnf remove libreoffice-core -y
sudo dnf remove mediawriter -y
sudo dnf remove simple-scan -y
sudo dnf remove totem -y
sudo dnf remove rhythmbox -y

## Install needed packages
sudo dnf install seahorse -y
sudo dnf install vlc -y
