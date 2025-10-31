# Configuring Fedora

Make all files executable.

```bash
chmod +x ./*.sh
```

## Upgrade

Upgrade system.

```bash
sudo dnf upgrade --refresh -y
```

## RPM Fusion

Configure RPM Fusion repositories and install GPU drivers.
Replace `<driver>` with one of the following options: `intel`, `amd`, or `nvidia`.

```bash
./configure_rpm_fusion.sh <driver>
```

## Flatpak

Configure Flatpak.

```bash
./configure_flatpak.sh
```

## Configure Home

Configure folders and templates.

```bash
./configure_home.sh
```

## Configure fonts

Install fonts from Nerd Fonts.

```bash
./configure_fonts.sh
```

## Recommended Applications

Install recommended applications.

```bash
./recommended_apps.sh
```

## Install Editors

Install VSCode and Zed.

```bash
./install_editors.sh
```

## Configure Git

Configure username and email for Git.

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Set the SSH key for signing commits and tags.
Replace `<path-to-your-public-ssh-key>` with the path to the fingerprint of your public SSH key used for signing.

```bash
git config --global user.signingkey <path-to-your-public-ssh-key>
```

Copy the public SSH key fingerprint to the `~/.config/git/allowedSigners` file.
Replace `<your_email>` with your email and `<your-public-ssh-key>` with the fingerprint of your public SSH key.

```bash
echo "<your_email> <your-public-ssh-key>" >> ~/.config/git/allowedSigners
```
