## Create users for building
sudo -i -u root groupadd --system guixbuild

for i in $(seq -w 1 10);
  do
    sudo -i -u root useradd -g guixbuild -G guixbuild           \
            -d /var/empty -s $(which nologin)   \
            -c "Guix build user $i" --system    \
            guixbuilder$i;
  done
