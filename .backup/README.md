# dnf
- [brave-browser](https://brave.com/linux/)
```
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
```

- [starship](https://github.com/starship/starship#step-1-install-starship)
```
sudo dnf copr enable atim/starship
sudo dnf install starship
```

- [mullvad-vpn](https://mullvad.net/en/help/install-mullvad-app-linux/)
```
wget --content-disposition https://mullvad.net/download/app/rpm/latest
sudo dnf install -y ./MullvadVPN-XXXX.X_x86_64.rpm
```

- [vlc](https://www.videolan.org/vlc/download-fedora.html)
```
su -
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install vlc
```

- [codium](https://vscodium.com/#install-on-fedora-rhel-centos-rockylinux-opensuse-rpm-package)
```
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
sudo dnf install codium
```

# pip
- [yt-dlp](https://github.com/yt-dlp/yt-dlp/wiki/Installation#with-pip)
```
python3 -m pip install -U yt-dlp
```

- [gallery-dl](https://github.com/mikf/gallery-dl#pip)
```
python3 -m pip install -U gallery-dl
```

- [ffsend](https://github.com/timvisee/ffsend#linux-prebuilt-binaries) - https://github.com/timvisee/ffsend/releases/latest
```
cd ~/Downloads/
# Rename binary to ffsend
mv ./ffsend-*-linux-x64 ./ffsend
chmod a+x ./ffsend
sudo mv ./ffsend /usr/local/bin/
rm ffsend
```

- [neofetch](https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge)
```
git clone https://github.com/dylanaraps/neofetch
cd neofetch
sudo make install
cd ..
rm -rf neofetch/
```

# fonts/extension/plugins
- [vscode-icons](https://github.com/vscode-icons/vscode-icons/releases)
```
cd ~/Downloads/
codium --install-extension vscode-icons-*.vsix
rm vscode-icons-*.vsix
```

- [NerdFonts](https://github.com/ryanoasis/nerd-fonts#option-5-clone-the-repo)
```
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/FiraCode
```
```
./install.sh FiraCode
```
```
cd ..
rm -rf nerd-fonts
```

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- [zsh-fzf-history-search](https://github.com/joshskidmore/zsh-fzf-history-search#oh-my-zsh)
```
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
```

- [NvChad](https://nvchad.com/docs/quickstart/install)
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

- [pop-shell](https://github.com/pop-os/shell#packaging-status)
```
sudo dnf install xprop
sudo npm install -g typescript
```

- [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal#restart-nautilus)
```
sudo dnf install nautilus-python
```
```
git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal
cd nautilus-open-any-terminal
```
```
sudo tools/update-extension-system.sh install
```
```
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
```
```
cd ..
rm -rf nautilus-open-any-terminal
```

- [Mullvad Broweser](https://mullvad.net/en/download/browser/linux)
