# install apps on fresh debian-based

# tilde
sudo apt-get install tilde

# guake
sudo apt-get install guake

# load guake preferences
guake --restore-preferences ./guake_prefs.txt
# guake --save-preferences ./guake_prefs.txt
# sudo apt install tmux

# VS Code
sudo apt-get install code
code --install-extension paulabrams1.trade-wars-2002-color-theme

# npm
sudo apt install npm

# Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# Midnight Commander
sudo apt install mc

# duck-duck-go cli
sudo apt install ddgr

# snap packagemanaer 
sudo apt install snapd

# btop, neofetch sysinfo
snap install btop
sudo apt install neofetch

# optional btop config
sudo snap connect btop:system-observe
`sudo snap connect btop:physical-memory-observe`
`sudo snap connect btop:mount-observe` 
`sudo snap connect btop:hardware-observe`
`sudo snap connect btop:process-control`
`sudo snap connect btop:network-monitor`
`sudo snap connect btop: removable-media` 

# duf, ncdu disk usage
sudo apt install duf
sudo apt install ncdu

# dolphin file manager
sudo apt install dolphin

# git config
git config --global user.email "john.paul.abrams@gmail.com"
git config --global user.name "Paul Abrams"

# zsh shell and oh-my-zsh
 sudo apt install zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Rust, cargo
curl https://sh.rustup.rs -sSf | sh

# broot file browser
cargo install broot
export PATH="/home/i/.cargo/bin:$PATH"
cp ./broot/conf.hjson ~/.config/broot/conf.hjson 

# dnote
curl -s https://www.getdnote.com/install | sh

# lsd ls replacement
cargo install lsd
cp ./lsd/config.yaml ~/.config/lsd/config.yaml

# autojump