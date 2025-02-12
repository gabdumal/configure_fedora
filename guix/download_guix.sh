cd ~/Downloads
wget 'https://sv.gnu.org/people/viewgpg.php?user_id=15145' \
      -qO - | gpg --import -
wget https://ftp.gnu.org/gnu/guix/guix-binary-1.4.0.x86_64-linux.tar.xz
wget https://ftp.gnu.org/gnu/guix/guix-binary-1.4.0.x86_64-linux.tar.xz.sig
gpg --verify guix-binary-1.4.0.x86_64-linux.tar.xz.sig
cd -
