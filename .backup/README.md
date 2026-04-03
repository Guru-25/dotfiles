# dnf

### [ghostty](https://ghostty.org/docs/install/binary#fedora)
```
sudo dnf copr enable pgdev/ghostty
sudo dnf install ghostty
```

### [brave-browser](https://brave.com/linux)
```
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf install brave-browser
```

# python

### [maestral](https://github.com/SamSchott/maestral#python-package-using-pypi)
```
python3 -m venv ~/.local/share/maestral-venv

source ~/.local/share/maestral-venv/bin/activate
python3 -m pip install --upgrade 'maestral[gui]'
```

# custom

### [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation) *
```
sudo dnf install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

omz update
```

### [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-9-clone-the-repo)
```
git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts
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
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/auto-notify
```

### [NvChad](https://nvchad.com/docs/quickstart/install)
```
sudo dnf install neovim ripgrep gcc make
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
:MasonInstallAll
rm -rf ~/.config/nvim/.git

nvim
:Lazy sync
```

### [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal#from-source)
```
sudo dnf install nautilus-python

git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal.git
cd nautilus-open-any-terminal
make
sudo make install-nautilus schema
cd ..
rm -rf nautilus-open-any-terminal

sudo glib-compile-schemas /usr/share/glib-2.0/schemas
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal ghostty
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system
```

### [uad-ng](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest)
```
sudo dnf install aria2c
aria2c --allow-overwrite -d ~/.local/bin -o uad-ng https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest/download/uad-ng-linux
chmod +x ~/.local/bin/uad-ng
```

### [yt-dlp](https://github.com/yt-dlp/yt-dlp/wiki/Installation#using-the-release-binary)
```
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp

yt-dlp -U
```

### [autoload.lua](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua)
```
mkdir -o ~/.config/mpv/scripts

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

### [starship](https://github.com/starship/starship#step-1-install-starship)
```
curl -sS https://starship.rs/install.sh | sh
starship preset nerd-font-symbols -o ~/.config/starship.toml
```

### [ente](https://github.com/ente-io/photos-desktop/releases/latest)
```
sudo dnf remove ente
cd ~/Downloads/
sudo rpm -i ente-x-x86_64.rpm
rm ente-x-x86_64.rpm
```

### GitHub Extensions
```
sudo dnf install gh
gh auth login
gh extension install ghcli/gh-commit
gh extension install github/gh-models

gh extension upgrade --all
```

### [cryptomator-cli](https://github.com/cryptomator/cli/releases/latest)
```
cd ~/Downloads
unzip cryptomator-cli-*-linux-x64.zip
rm -rf ~/.local/share/cryptomator-cli
mv cryptomator-cli ~/.local/share
rm cryptomator-cli-*-linux-x64.zip
```

### [Zed](https://github.com/zed-industries/zed/releases/latest)
```
curl -f https://zed.dev/install.sh | sh
```
