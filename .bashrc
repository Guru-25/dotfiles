# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

### EXPORT
export TERM='xterm-256color'            # getting proper colors
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
export EDITOR='nvim'                    # $EDITOR use nvim in terminal

### SEARCH INSTALLED PACKAGES
search() {
	grep "$1" ~/.backup/packages.txt
}

### ALIASES ###

# vim
alias vim='nvim'

# Changing "ls" to "exa"
alias ls='exa --color=always --group-directories-first'     # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -al --color=always --group-directories-first' # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# yt-dlp
alias yt-dlp-audio='yt-dlp -f ba -x --audio-format mp3 --no-embed-subs -P "~/Music/"'
alias yt-dlp-best='yt-dlp -f bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/b'
alias yt-dlp-subs='yt-dlp --skip-download --convert-subs srt --no-embed-thumbnail -P "~/Downloads/"'
alias yt-dlp-thumbnail='yt-dlp --skip-download --no-embed-subs --convert-thumbnails png -P "~/Pictures/"'

# ffsend
alias send='ffsend up -v -S -y --qr'

# dnf and flatpak update
alias up='sudo dnf upgrade && flatpak update'

# bare git repo alias for dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# dnf and flatpak packages list
alias backup='printf "# dnf\n" > ~/.backup/packages.txt && dnf rq --userinstalled --qf "%{name}" >> ~/.backup/packages.txt && printf "\n# flatpak\n" >> ~/.backup/packages.txt && flatpak list --columns=application --app >> ~/.backup/packages.txt && printf "done\n"'

# get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# weather
alias wttr='curl wttr.in/madurai'

# Largest Files
alias largefile='du -h -x -s -- * | sort -r -h | head -20'

# System Information
alias neo='neofetch'
alias bat='bat --theme OneHalfDark'
alias cat='bat --theme OneHalfDark -p $@'
alias man='batman $1'

# fzf
alias preview='fzf --preview="bat --color=always --style=numbers --theme OneHalfDark {}" --preview-window=down'

# System
alias q='exit'
alias c='clear'

# pip upgrade
alias pip-up='pip install --upgrade pip && if [[ $(pip list --outdated | wc -l) -gt 2 ]]; then pip list --outdated --format=columns | awk "\""{print $1}"\"" | tail -n +3 | xargs -n1 pip install -U; else echo "No outdated packages to upgrade"; fi'

# refresh bash
alias refresh='source ~/.bashrc'

# edit .bashrc
alias bashrc='nvim ~/.bashrc'

### RANDOM COLOR SCRIPT ###
colorscript -e zwaves

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash)"
