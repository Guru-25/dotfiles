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

alias yt-dlp-audio='yt-dlp -f ba -x --audio-format m4a --no-embed-subs -P "~/Music/"'
alias yt-dlp-best='yt-dlp -f bv[ext=mp4]+ba[ext=m4a]/best[ext=mp4]/best'
alias yt-dlp-subs='yt-dlp --skip-download --convert-subs srt --no-embed-thumbnail -P "~/Downloads/"'
alias yt-dlp-thumbnail='yt-dlp --skip-download --no-embed-subs --convert-thumbnail png -P "~/Pictures/"'
alias send='ffsend up -v -S --yes --qr'
alias update='printf "running dnf upgrade...\n\n" && sudo dnf upgrade && printf "\nrunning flatpak update...\n\n" && flatpak update'
alias config='/usr/bin/git --git-dir=/home/guru/.cfg/ --work-tree=/home/guru'
alias backup='printf "backing up dnf softwares...\n" && printf "#dnf\n" > .backup.txt && dnf rq --userinstalled --qf "%{name}" >> .backup.txt && printf "done\n\n" && printf "backing up flatpak softwares...\n" && printf "\n#flatpak\n" >> .backup.txt && flatpak list --columns=application --app >> .backup.txt && printf "done\n"'
