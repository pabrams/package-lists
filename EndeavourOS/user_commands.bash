#!/bin/bash
#
# This file can contain commands that will be executed at the end of
# EndeavourOS install (online mode only) on the target system.
# The commands will be executed as root.
#
# This allows you to customize the installed system in several ways!
#
# If you add commands to this file, start the install process after
# saving this file.
#
# Tip: save your customized commands into a file on an internet server
# and fetch that file with command:
#
#     wget -O ~/user_commands.bash "URL-referring-the-file"
#
# Ideas for customization:
#   - install packages
#   - remove packages
#   - enable or disable system services
#   - writing dotfiles under $HOME
#   - etc.
#
# Example commands:
#
#     pacman -S --noconfirm --needed gufw geany chromium
#     pacman -Rsn --noconfirm xed
#     systemctl enable ufw
#
# There are some limitations to the commands:
#   - The 'pacman' commands mentioned above require option '--noconfirm',
#     otherwise the install process may hang because pacman waits for a
#     confirmation!
#   - Installing packages with 'yay' does not work because yay may not
#     be run as root.
#     The 'makepkg' command suffers from the same limitation.
#     This essentially blocks installing AUR packages here.
#
# Advanced tip (for ISOs since year 2022):
#    To write files directly into $HOME, you can find the new username
#    as the first parameter given to user_commands.bash, e.g.
#        username="$1"
#    Then you may write files under folder
#        /home/$username
#
# For ISOs released before year 2022:
#    Find your new username with command
#        username=$(cat /tmp/new_username.txt)
#
#----------------------------------------------------------------------------------
# Full example (to try it, remove the first '#' from the lines below):
#
#!/bin/bash
# Note: needs ISO since year 2022

git config --global user.email "john.paul.abrams@gmail.com"
git config --global user.name "Paul Abrams"

username="me"
echo "# Hello world!" >> /home/$username/.bashrc
pacman -S --noconfirm --needed git base-devel

#install code
yay -S visual-studio-code-bin --noconfirm
code --install-extension paulabrams1.trade-wars-2002-color-theme

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# git config
git config --global user.email "john.paul.abrams@gmail.com"
git config --global user.name "Paul Abrams"


# install code
sudo pacaur -S visual-studio-code-bin --noconfirm

# install zsh
pacman -S zsh

# make it default shell
chsh -l
chsh -s /usr/bin/zsh

# install and enable powerlevel10k
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# install btop
sudo pacman -S btop --noconfirm

# install broot (br)
sudo pacman -S broot --noconfirm

# install youtub-dl fork
sudo pacman -S yt-dlp --noconfirm

# instlal kitty
sudo pacman -S kitty
