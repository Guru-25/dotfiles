# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$PATH:$HOME/.local/share/flutter/bin:$PATH"
export PATH="$PATH:$HOME/Android/Sdk/emulator:$PATH"
export PATH="$PATH:$HOME/.local/share/idea-IU/bin:$PATH"

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
  auto-notify
)

export AUTO_NOTIFY_WHITELIST=(
  "dnf" "flatpak" "aria2c" "unrar" "pip"
)

export CHROME_EXECUTABLE=/var/lib/flatpak/app/com.brave.Browser/x86_64/stable/active/export/bin/com.brave.Browser

source $ZSH/oh-my-zsh.sh

source ~/.secrets

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

### EXPORT
export EDITOR='nvim' # $EDITOR use nvim in terminal

### "nvim" as manpager
export MANPAGER='nvim +Man!'

### ALIASES ###

# Temporary shell
alias temp='(export HISTFILE=$(mktemp) && zsh)'

# Changing "ls" to "exa"
alias ls='eza --color=always --group-directories-first'     # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -al --color=always --group-directories-first' # long format

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# bare git repo alias for dotfiles
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# short alias
alias code='codium'

# dnf, flatpak and pip
alias dnfu='sudo dnf upgrade -y'
alias flatu='flatpak update -y'
alias cleanup='sudo dnf autoremove && flatpak remove --unused'

# dnf, flatpak, pip and gnome-extensions list
alias backup='
    printf "# dnf\n" > $HOME/.backup/packages.txt && 
    dnf rq --userinstalled --qf "%{name}\n" >> $HOME/.backup/packages.txt && 
    printf "\n# flatpak\n" >> $HOME/.backup/packages.txt && 
    flatpak list --columns=application --app >> $HOME/.backup/packages.txt && 
    printf "\n# gnome-extensions\n" >> $HOME/.backup/packages.txt && 
    gnome-extensions list >> $HOME/.backup/packages.txt && 
    printf "\n# npm\n" >> $HOME/.backup/packages.txt && 
    npm list -g --depth=0 | awk "{print \$2}" | cut -d"@" -f1 | tail -n +2 >> $HOME/.backup/packages.txt && 
    printf "done\n"
'

# get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# edit conf
alias aliasconf='nvim ~/.zshrc'
alias backupconf='nvim ~/.backup/README.md'

# ip
alias ip.me='curl -s https://api.nordvpn.com/v1/helpers/ips/insights | jq .'

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"
