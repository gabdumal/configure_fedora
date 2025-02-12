## Install Guix
if getenforce | grep -q 'Enforcing'; then
    ## Guix only works with SELinux in permissive mode
    echo "You must set SELinux to permissive."
    echo "Edit its file:"
    echo "  sudo nano /etc/selinux/config"
    echo "Then reboot the system."
    exit 1
else
    chmod +x ./download_guix.sh
    chmod +x ./create_store.sh
    chmod +x ./create_users.sh
    chmod +x ./configure_root_environment.sh
    chmod +x ./configure_daemon.sh
    chmod +x ./authorize_substitutes.sh
    chmod +x ./configure_local_environment.sh
    chmod +x ./configure_channels.sh

    ./download_guix.sh
    ./create_store.sh
    ./create_users.sh
    ./configure_root_environment.sh
    ./configure_daemon.sh
    ./authorize_substitutes.sh
    ./configure_local_environment.sh
    ./configure_channels.sh
fi
