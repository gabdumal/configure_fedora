# Clear GUIX PROFILE
sudo -i -u root rm /etc/profile.d/guix.sh

## Clear / directories
sudo -i -u root rm -rf /var/guix
sudo -i -u root rm -rf /gnu

## Create / directories
cd /tmp
sudo -i -u root tar --warning=no-timestamp -xf ~/Downloads/guix-binary-1.4.0.x86_64-linux.tar.xz
sudo -i -u root mv var/guix /var/
sudo -i -u root mv gnu /

## Clear ~root directories
sudo -i -u root rm -rf ~root/.config/guix

## Create ~root directories
sudo -i -u root mkdir -p ~root/.config/guix
sudo -i -u root ln -sf /var/guix/profiles/per-user/root/current-guix \
         ~root/.config/guix/current
cd -
