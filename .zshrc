# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-fzf-history-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

### disable underline in zsh-syntax-highlighting
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

### EXPORT
export EDITOR='nvim' # $EDITOR use nvim in terminal

### SET MANPAGER

### "bat" as manpager
export MANPAGER='sh -c "col -bx | bat -l man -p"'
export MANROFFOPT='-c'

### SEARCH INSTALLED PACKAGES
function search() {
	grep "$1" ~/.backup/packages.txt
}

### ALIASES ###

# flatpak
alias codium='flatpak run com.vscodium.codium'
alias vlc='flatpak run org.videolan.VLC'
alias notepadqq='flatpak run com.notepadqq.Notepadqq'

# navigation
alias ..='cd ..'

# myip
alias myip='ip addr show | grep "inet " | grep -v 127.0.0.1 | awk "{print \$2}" | cut -d "/" -f 1'

# vim
alias vim='nvim'

# Changing "ls" to "exa"
alias ls='exa --color=always --group-directories-first'     # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -al --color=always --group-directories-first' # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | grep -E "^\."'

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# yt-dlp
alias yt-dlp-audio='yt-dlp -f ba -x --audio-format mp3 --no-embed-subs -P "~/Music/"'
alias yt-dlp-best='yt-dlp -f bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/b'
alias yt-dlp-subs='yt-dlp --skip-download --convert-subs srt --no-embed-thumbnail -P "~/Downloads/"'
alias yt-dlp-thumb='yt-dlp --skip-download --no-embed-subs --convert-thumbnails png -P "~/Pictures/"'

# ffsend
alias send='ffsend up -v -S -y --qr'

# bare git repo alias for dotfiles
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ctig='GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME tig'

function cfg(){
  if [[ "$#" -eq 0 ]]; then
    (cd /
    for i in $(config ls-files); do
      echo -n "$(config -c color.status=always status $i -s | sed "s#$i##")"
      echo -e "¬/$i¬\e[0;33m$(config -c color.ui=always log -1 --format="%s" -- $i)\e[0m"
    done
    ) | column -t --separator=¬ -T2
  else
    config $*
  fi
}

# dnf and flatpak update
alias up='sudo dnf upgrade; flatpak update'

# dnf and flatpak packages list
alias backup='printf "# dnf\n" > ~/.backup/packages.txt && dnf rq --userinstalled --qf "%{name}" >> ~/.backup/packages.txt && printf "\n# flatpak\n" >> ~/.backup/packages.txt && flatpak list --columns=application --app >> ~/.backup/packages.txt && printf "done\n"'

# backup gnome extension list
alias extbackup='gnome-extensions list > ~/.backup/extensions.txt && printf "done\n"'

# ps
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'

# get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# weather
alias wttr='curl wttr.in/madurai'

alias pip-up='pip install -U pip && if [[ $(pip list --outdated | wc -l) -gt 2 ]]; then pip list --outdated --format=columns | awk "{print $1}" | tail -n +3 | xargs -n1 pip install -U; else echo "No outdated packages to upgrade"; fi'

# refresh zsh
alias refresh='source ~/.zshrc'

# edit conf
alias aliasconf='nvim ~/.zshrc'
alias dnfconf='sudo nvim /etc/dnf/dnf.conf'
alias dnfrepo='cd /etc/yum.repos.d/'
alias dnsconf='sudo nvim /etc/systemd/resolved.conf' # run 'sudo systemctl restart systemd-resolved' after changing
alias backupconf='nvim ~/.backup/README.md'
alias gallery-dlconf='nvim ~/.config/gallery-dl/config.json'
alias yt-dlpconf='nvim ~/.config/yt-dlp/config'
alias starshipconf='nvim ~/.config/starship.toml'
alias codiumconf='nvim ~/.var/app/com.vscodium.codium/config/VSCodium/User/settings.json'
alias gitconf='nvim ~/.gitconfig'
alias alacrittyconf='nvim ~/.config/alacritty/alacritty.yml'
alias sshdconf='sudo nvim /etc/ssh/sshd_config'
alias sshconf='nvim ~/.ssh/config'

# xampp
alias xampp='sudo /opt/lampp/lampp'

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"
