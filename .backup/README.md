# dnf
- [starship](https://github.com/starship/starship#step-1-install-starship)
```
sudo dnf copr enable atim/starship
sudo dnf install starship
```

- [codium](https://vscodium.com/#install-on-fedora-rhel-centos-rockylinux-opensuse-rpm-package)
```
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
sudo dnf install codium
```

- [msttcore-fonts-installer](https://mscorefonts2.sourceforge.net/)
```
sudo dnf install curl cabextract xorg-x11-font-utils fontconfig
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

# others
- [neofetch](https://github.com/dylanaraps/neofetch/wiki/Installation#latest-git-master-bleeding-edge)
```
git clone https://github.com/dylanaraps/neofetch
cd neofetch
sudo make install
cd ..
rm -rf neofetch/
```

- [vscode-icons](https://github.com/vscode-icons/vscode-icons/releases)
```
cd ~/Downloads/
codium --install-extension vscode-icons-*.vsix
rm vscode-icons-*.vsix
```

- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-5-clone-the-repo)
```
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/FiraCode
./install.sh FiraCode
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

- [auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify#installation)
```
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git $ZSH_CUSTOM/plugins/auto-notify
```

- [NvChad](https://nvchad.com/docs/quickstart/install)
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

- [pop-shell](https://github.com/pop-os/shell#packaging-status)
```
sudo dnf install gnome-shell-extension-pop-shell xprop
```

- [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal?tab=readme-ov-file#from-source)
```
sudo dnf install nautilus-python
git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal.git
cd nautilus-open-any-terminal
make
sudo make install schema
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
cd ..
rm -rf nautilus-open-any-terminal
```

- [syncthing](https://syncthing.net/downloads/)
```
cd ~/Downloads
tar -xf syncthing-linux-amd64-x.x.x.tar.gz
cd syncthing-linux-amd64-x.x.x.tar.gz
mv syncthing ~/.local/bin/
cd ..
rm -rf syncthing-linux-amd64-x.x.x
rm syncthing-linux-amd64-x.x.x.tar.gz
```

- [uad-ng](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest)
```
cd ~/Downloads
unzip uad-ng-linux.zip
mv uad-ng-linux ~/.local/bin/uad-ng
chmod +x ~/.local/bin/uad-ng
rm uad_gui-linux.tar.gz
rm -f uad-ng*
```

- [yt-dlp](https://github.com/yt-dlp/yt-dlp/wiki/Installation#using-the-release-binary)
```
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp
```

- [DataGrip](https://www.jetbrains.com/help/datagrip/installation-guide.html#standalone)
```
sudo tar xzf datagrip-*.tar.gz -C /opt/
opt/DataGrip-*/bin/datagrip.sh
```

- [Android Studio](https://developer.android.com/studio) - https://developer.android.com/studio/install

- [Brave Web Browser](https://brave.com/en-in/linux/#release-channel-installation)
```
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
```
