## Set variables

### Load GUIX_PROFILE
tee ~/.bashrc.d/guix.sh > /dev/null <<< "GUIX_PROFILE=\"\$GUIX_PROFILE:$HOME/.config/guix/current\""
tee -a ~/.bashrc.d/guix.sh > /dev/null <<< "GUIX_PROFILE=\"\$GUIX_PROFILE:$HOME/.guix-profile\""
tee -a ~/.bashrc.d/guix.sh > /dev/null <<< ". $HOME/.guix-profile/etc/profile"

echo "GUIX_LOCPATH=\$GUIX_LOCPATH:$HOME/.guix-profile/lib/locale" >> ~/.bashrc.d/guix.sh

echo "XDG_DATA_DIRS=\$XDG_DATA_DIRS:$HOME/.guix-profile/share" >> ~/.bashrc.d/guix.sh

echo "PATH=$PATH:$HOME/.config/guix/current/bin" >> ~/.bashrc.d/guix.sh
echo "INFOPATH=$INFOPATH:$HOME/.config/guix/current/share/info" >> ~/.bashrc.d/guix.sh
