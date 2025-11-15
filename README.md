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

Change the font used on Ptyxis to either `FiraCode Nerd Font` or `MesloLGS Nerd Font`.

1. Open Ptyxis.
2. Open its preferences with the command `Ctrl + ,`.
3. Open to the `Appearance` tab.
4. Navigate to the `Font` section.
5. Mark the option `Use System Font` as false.
6. Select the option `Custom Font`.
7. Select your preferred font from the list. I use `MesloLGL Nerd Font Mono Regular` with the size `14`.

## Recommended Applications

Install recommended applications.

```bash
./recommended_apps.sh
```

## Install Editors

Install VSCode.

```bash
./configure_editors.sh
```

## Configure Git

Configure username and email for Git.
Open the terminal and execute the following commands, replacing `Your Name` and `you@example.com` with your actual name and email.

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

## Configure GNOME

Add shortcuts for opening the Ptyxis terminal and the System Monitor.

1. Open the GNOME Settings application.
2. Navigate to the section `Keyboard` and open it.
3. Navigate to the heading `Keyboard Shortcuts`.
4. Select `View and Customize Shortcuts`.
5. Select `Custom Shortcuts`.
6. Select `Add Shortcut...`.
7. Create an entry with the following details:
   - Name: Terminal
   - Command: `ptyxis`
   - Shortcut: `Ctrl + Alt + T`
8. Select the `+` button.
9. Create an entry with the following details:
    - Name: System Monitor
    - Command: `gnome-system-monitor`
    - Shortcut: `Ctrl + Shift + Esc`

## Shell

### Fish

Install Fish.
Execute the following command.

```bash
./configure_fish.sh
```

Set Fish as the interactive shell.
Paste the following commands into the end of the file `~/.bash-profile`.

```bash
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} && ${SHLVL} == 1 ]]
then
    shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
    exec fish $LOGIN_OPTION
fi
```

Configure Ptyxis to use the login shell.

1. Open Ptyxis.
2. Open its preferences with the command `Ctrl + ,`.
3. Open to the `Behavior` tab.
4. Navigate to the `Shell` section.
5. Mark the option `Use Login Shell` as true.

Close and open Ptyxis again. It should now open Fish as the default shell.

### Starship

Install Starship.
Execute the following command in Fish shell, and enter `y` when prompted.

```fish
./configure_starship.sh
```

### Zoxide

Install Zoxide.
Execute the following command in Fish shell.

```fish
./configure_zoxide.sh
```

## Python

Install and configure Python.

```fish
./configure_python.sh
```

## C, C++ and CMake

Install and configure C, C++, and CMake.

```fish
./configure_c_cpp_cmake.sh
```

## PNPM and Node

Install and configure PNPM and Node.

```fish
./configure_pnpm.sh
```
