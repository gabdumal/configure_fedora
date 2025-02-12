chmod +x ./update_system.sh
chmod +x ./configure_bash.sh
chmod +x ./configure_home.sh
chmod +x ./reset_keyrings.sh
chmod +x ./configure_rpm_fusion.sh
chmod +x ./install_editors.sh
chmod +x ./install_1password.sh
chmod +x ./guix/install.sh
chmod +x ./lix/install.sh

./update_system.sh
./configure_bash.sh
./configure_home.sh

# ./reset_keyrings.sh
./configure_rpm_fusion.sh
./install_editors.sh
./install_1password.sh

# ./guix/install.sh
./lix/install.sh
