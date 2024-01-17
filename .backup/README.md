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

- [virt-manager](https://vashinator.com/install-virt-manager-on-fedora/)
```
sudo dnf install @virtualization
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo usermod -a -G libvirt $(whoami)
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

- [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal#restart-nautilus)
```
sudo dnf install nautilus-python
git clone https://github.com/Stunkymonkey/nautilus-open-any-terminal
cd nautilus-open-any-terminal
sudo tools/update-extension-system.sh install
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
cd ..
rm -rf nautilus-open-any-terminal
```

- [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq?tab=readme-ov-file#auto-cpufreq-installer)
```
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cd ..
rm -rf auto-cpufreq
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

- [uad](https://github.com/0x192/universal-android-debloater/releases)
```
cd ~/Downloads
tar -xf uad_gui-linux.tar.gz
mv uad_gui-linux ~/.local/bin/uad
rm uad_gui-linux.tar.gz
```

- [ff2mpv](https://github.com/woodruffw/ff2mpv/wiki/Installation-on-Linux#install-using-script-recommended)
```
git clone https://github.com/woodruffw/ff2mpv
mv ff2mpv ~/.config/
cd ~/.config/ff2mpv/
./install.sh firefox
```

- [vstudio](https://valentina-db.com/en/all-downloads/vstudio/current)
```
cd ~/Downloads
sudo rpm -i vstudio_x64_*_lin.rpm
rm vstudio_x64_*_lin.rpm
```

- [yt-dlp](https://github.com/yt-dlp/yt-dlp/wiki/Installation#using-the-release-binary)
```
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp
```

- [firefox](https://support.mozilla.org/en-US/kb/install-firefox-linux) - [Download](https://www.mozilla.org/en-US/firefox/linux/)
```
cd ~/Downloads
tar xjf firefox-*.tar.bz2
sudo mv firefox /opt
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications
rm firefox-*.tar.bz2 
```

