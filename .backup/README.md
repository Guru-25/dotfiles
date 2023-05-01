# dnf
- [brave-browser](https://brave.com/linux/)
```
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
```

- [starship](https://github.com/starship/starship#step-1-install-starship)
```
sudo dnf copr enable atim/starship
sudo dnf install starship
```
Add the following to the end of `~/.zshrc`:
```
eval '$(starship init zsh)'
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

# package/software
- [64Gram Desktop](https://github.com/TDesktop-x64/tdesktop/releases)

- [ffsend](https://github.com/timvisee/ffsend#linux-prebuilt-binaries) - https://github.com/timvisee/ffsend/releases/latest
```
# Rename binary to ffsend
mv ./ffsend-* ./ffsend
chmod a+x ./ffsend
sudo mv ./ffsend /usr/local/bin/
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
```

# fonts/extension/plugins
- [vscode-icons](https://github.com/vscode-icons/vscode-icons/releases)
```
codium --install-extension vscode-icons-*.vsix
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

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):
```
plugins=(
    zsh-autosuggestions
)
```

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Activate the plugin in `~/.zshrc`:
```
plugins=(
    zsh-syntax-highlighting
)
```

- [zsh-fzf-history-search](https://github.com/joshskidmore/zsh-fzf-history-search#oh-my-zsh)
```
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
```
Enable it in your `.zshrc` by adding it to your plugin list:
```
plugins=(
    zsh-fzf-history-search
)
```

- [NvChad](https://nvchad.com/docs/quickstart/install)
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
