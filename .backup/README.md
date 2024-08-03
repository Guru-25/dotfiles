# dnf
### [starship](https://github.com/starship/starship#step-1-install-starship)
```
sudo dnf copr enable atim/starship
sudo dnf install starship
```

### [codium](https://vscodium.com/#install)
```
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium
```

# others

### [msttcore-fonts-installer](https://mscorefonts2.sourceforge.net/) *
```
sudo dnf install curl cabextract xorg-x11-font-utils fontconfig

sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

### [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation) *
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

omz update
```

### [Android Studio](https://developer.android.com/studio) *
```
cd ~/Downloads/
rm -rf ~/.local/share/android-studio/
tar -xf android-studio-x-linux.tar.gz -C ~/.local/share/
rm android-studio-x-linux.tar.gz
~/.local/share/android-studio/bin/studio.sh
```

### [flutter](https://docs.flutter.dev/get-started/install/linux/desktop?tab=download#download) *
```
sudo dnf install clang cmake ninja-build
cd ~/Downloads/
tar -xf flutter_linux_x-stable.tar.xz -C ~/.local/share/
rm flutter_linux_x-stable.tar.xz

flutter upgrade
```

### [GitHub.copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot) *
```
cd ~/Downloads/
codium --install-extension GitHub.copilot-x.vsix
rm GitHub.copilot-x.vsix
```

### [vscode-icons](https://github.com/vscode-icons/vscode-icons/releases/latest)
```
cd ~/Downloads/
codium --install-extension vscode-icons-x.vsix
rm vscode-icons-x.vsix
```

### [nerd-fonts](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-7-clone-the-repo)
```
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/FiraCode
./install.sh FiraCode
cd ..
rm -rf nerd-fonts
```

### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
```
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
```
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### [auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify#installation)
```
rm -rf ~/.oh-my-zsh/custom/plugins/auto-notify/
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git $ZSH_CUSTOM/plugins/auto-notify
```

### [NvChad](https://nvchad.com/docs/quickstart/install)
```
sudo dnf install neovim ripgrep gcc make
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
:MasonInstallAll
rm -rf ~/.config/nvim/.git

nvim
:Lazy sync
```

### [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal?tab=readme-ov-file#from-source)
```
sudo dnf install nautilus-python

git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal.git
cd nautilus-open-any-terminal
make
sudo make install-nautilus schema
cd ..
rm -rf nautilus-open-any-terminal

sudo glib-compile-schemas /usr/share/glib-2.0/schemas
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system
```

### [syncthing](https://github.com/syncthing/syncthing/releases/latest)
```
cd ~/Downloads
tar -xf syncthing-linux-amd64-x.tar.gz -C ~/.local/bin/
rm syncthing-linux-amd64-x.tar.gz
```

### [uad-ng](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest)
```
cd ~/Downloads
unzip uad-ng-linux.zip
mv uad-ng-linux ~/.local/bin/uad-ng
chmod +x ~/.local/bin/uad-ng
rm uad_gui-linux.tar.gz
rm -f uad-ng*
```

### [yt-dlp](https://github.com/yt-dlp/yt-dlp/wiki/Installation#using-the-release-binary)
```
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp

yt-dlp -U
```

### [Ventoy](https://github.com/ventoy/Ventoy/releases/latest)
```
cd ~/Downloads/
tar -xf ventoy-x-linux.tar.gz
rm ventoy-x-linux.tar.gz
cd ventoy-x-linux/ventoy-x
sudo ./VentoyWeb.sh
cd ~/Downloads/
rm -rf ventoy-x-linux 
```

### [autoload.lua](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua)
```
curl https://raw.githubusercontent.com/mpv-player/mpv/master/TOOLS/lua/autoload.lua -o ~/.config/mpv/scripts/autoload.lua
```

### [playlistmanager.lua](https://github.com/jonniek/mpv-playlistmanager)
```
curl https://raw.githubusercontent.com/jonniek/mpv-playlistmanager/master/playlistmanager.lua -o ~/.config/mpv/scripts/playlistmanager.lua
```

### [thumbfast.lua](https://github.com/po5/thumbfast)
```
curl https://raw.githubusercontent.com/po5/thumbfast/master/thumbfast.lua -o ~/.config/mpv/scripts/thumbfast.lua
```

### [osc.lua](https://github.com/po5/thumbfast/blob/vanilla-osc/player/lua/osc.lua)
```
curl https://raw.githubusercontent.com/po5/thumbfast/vanilla-osc/player/lua/osc.lua -o ~/.config/mpv/scripts/osc.lua
```

### [webm.lua](https://github.com/ekisu/mpv-webm/releases)
```
curl https://github.com/ekisu/mpv-webm/releases/download/latest/webm.lua -o ~/.config/mpv/scripts/webm.lua
```

### [user.js](https://github.com/arkenfox/user.js/releases/latest)
```
cd ~/Downloads/
tar -xf user.js-x.tar.gz -C ~/.var/app/org.mozilla.firefox/.mozilla/firefox/x/
rm user.js-x.tar.gz

cd ~/.var/app/org.mozilla.firefox/.mozilla/firefox/aa7th091.arkenfox/
./updater.sh
./prefsCleaner.sh
```
