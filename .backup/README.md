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

- [cht.sh](https://github.com/chubin/cheat.sh#installation)
```
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh
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
flatpak run com.vscodium.codium --install-extension vscode-icons-*.vsix
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

- [Orchis-theme](https://github.com/vinceliuice/Orchis-theme#requirements)
```
sudo dnf install gtk-murrine-engine sassc
```
```
git clone https://github.com/vinceliuice/Orchis-theme
cd Orchis-theme
./install.sh
cd ..
rm -rf Orchis-theme/
```

- [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme#root-directory-recommended)
```
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

- [Vimix-cursors](https://github.com/vinceliuice/Vimix-cursors#installation)
```
git clone https://github.com/vinceliuice/Vimix-cursors
cd Vimix-cursors
./install.sh
cd ..
rm -rf Vimix-cursors
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

- [tgpt](https://github.com/aandrew-me/tgpt#download-for-gnulinux--or-macos-)
```
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
```
