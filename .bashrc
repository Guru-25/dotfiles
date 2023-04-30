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
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
export EDITOR='nvim'                    # $EDITOR use nvim in terminal

### SET MANPAGER

### "bat" as manpager
export MANPAGER='sh -c "col -bx | bat -l man -p"'
export MANROFFOPT='-c'

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### SEARCH INSTALLED PACKAGES
search() {
	grep "$1" ~/.backup/packages.txt
}

### ALIASES ###

# codium
alias codium='flatpak run com.vscodium.codium'

# navigation
alias ..='cd ..'

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

# dnf and flatpak update
alias up='sudo dnf upgrade; flatpak update'

# bare git repo alias for dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# termbin
alias tb='nc termbin.com 9999'

# dnf and flatpak packages list
alias backup='printf "# dnf\n" > ~/.backup/packages.txt && dnf rq --userinstalled --qf "%{name}" >> ~/.backup/packages.txt && printf "\n# flatpak\n" >> ~/.backup/packages.txt && flatpak list --columns=application --app >> ~/.backup/packages.txt && printf "done\n"'

# get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# weather
alias wttr='curl wttr.in/madurai'

# pip upgrade
alias pip-up='pip install -U pip && if [[ $(pip list --outdated | wc -l) -gt 2 ]]; then pip list --outdated --format=columns | awk "\""{print $1}"\"" | tail -n +3 | xargs -n1 pip install -U; else echo "No outdated packages to upgrade"; fi'

# refresh bash
alias refresh='source ~/.bashrc'

# edit conf
alias aliasconf='nvim ~/.bashrc'
alias dnfconf='sudo nvim /etc/dnf/dnf.conf'
alias dnfrepo='cd /etc/yum.repos.d/'
alias dnsconf='sudo nvim /etc/systemd/resolved.conf' # run 'sudo systemctl restart systemd-resolved' after changing

### COLOR SCRIPT ###
colorscript -e zwaves

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash)"
