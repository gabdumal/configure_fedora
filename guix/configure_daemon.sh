## Enable daemon on systemd
sudo -i -u root cp ~root/.config/guix/current/lib/systemd/system/gnu-store.mount \
     ~root/.config/guix/current/lib/systemd/system/guix-daemon.service \
     /etc/systemd/system/
sudo -i -u root systemctl enable --now gnu-store.mount guix-daemon

## Create symlink for guix
sudo -i -u root mkdir -p /usr/local/bin
cd /usr/local/bin
sudo -i -u root ln -s /var/guix/profiles/per-user/root/current-guix/bin/guix
