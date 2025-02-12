## Set variables

### Load GUIX_PROFILE
sudo -i -u root tee /etc/profile.d/guix.sh > /dev/null <<< "GUIX_PROFILE=\"`echo ~root`/.config/guix/current\""
sudo -i -u root tee -a /etc/profile.d/guix.sh > /dev/null <<< "source \$GUIX_PROFILE/etc/profile"

### Load GUIX_LOCPATH
sudo -i -u root tee -a /etc/profile.d/guix.sh > /dev/null <<< "GUIX_LOCPATH=$GUIX_LOCPATH:~root/.guix-profile/lib/locale"

## Create function for running daemon
sudo tee /etc/profile.d/guix-daemon.sh > /dev/null << 'EOF'
function run-guix-daemon() {
  sudo -i -u root guix-daemon --build-users-group=guixbuild
}
EOF
