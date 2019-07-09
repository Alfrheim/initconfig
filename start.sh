
# Installing i3 requisites
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev chromium-browser
sudo apt install -y caffeine pavucontrol thunar arandr  xbacklight feh rofi compton policykit-desktop-privileges policykit-1-gnome openvpn copyq rxvt-unicode i3status rofi zsh i3blocks guake gxkb blueman pasystray pnmixer xserver-xorg-input-synaptics redshift-gtk qutebrowser i3lock playerctl direnv neofetch stterm

sudo apt install -y vim vim-common git curl emacs  yadm

# Installing spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Installing enpass
sudo -i
echo "deb https://apt.enpass.io/ stable main" >  /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
sudo apt-get update
sudo apt-get install enpass

# Installing shutter
sudo add-apt-repository ppa:linuxuprising/shutter
sudo apt-get update
sudo apt install -y shutter

sudo apt install -y virtualbox mono-devel docker-compose

# grant docker permission
sudo usermod -a -G docker $USER

sudo snap install --classic slack
sudo snap install --classic intellij-idea-community
sudo snap install --classic datagrip
sudo snap install --classic skype
# sudo snap install --classic intellij-idea-ultimate
sudo snap install spotify
sudo snap install opera
sudo snap install telegram-desktop

# Ergodox (Wally)
sudo apt-get install gtk+3.0 webkit2gtk-4.0 libusb-dev

cd /tmp

# TODO add fonts from 3wubuntu repo

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# Installing oh-my-zsh
cd /tmp

curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh
chsh -s $(which zsh)
