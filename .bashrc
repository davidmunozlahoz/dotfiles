#!/bin/bash

# set vi mode
set -o vi
# to be able to clear the screen
bind -x $'"\C-l":clear;'

# sudo not required for some system commands
for command in mount umount sv pacman updatedb su shutdown  poweroff reboot ; do
     alias $command="sudo $command"
done; unset command

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	mkdir="mkdir -pv" \
	# yt="yt-dlp --embed-metadata -i" \
	# yta="yt -x -f bestaudio/best" \
	# ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	lsa="ls -lahN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	# ip="ip -color=auto"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	g="git" \
	z="zathura" \
	p="pacman" \
	sdn="shutdown -h now" \
    e="$EDITOR" \
    v="$EDITOR" \
    dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'\
    hss='hugo server --noHTTPCache'
	# trem="transmission-remote" \
	# YT="youtube-viewer" \
	# xi="sudo xbps-install" \
	# xr="sudo xbps-remove -R" \
	# xq="xbps-query" \

# Quickly access important directories
alias \
    cac="cd $XDG_CACHE_HOME" \
    cf="cd $XDG_CONFIG_HOME" \
    src="cd $HOME/.local/src" \
    bin="cd $HOME/.local/bin" \
    h="cd" \
    dox="cd $HOME/dox" \
    
# lf with image previews
alias lf="lfub"

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bind '"\C-O":"\C-k lfcd\n"'

# fuzzy finder
bind '"\C-F":"cd $(dirname "$(fzf)")\n"'

# custom prompt
source ~/.local/bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=True
export GIT_PS1_SHOWUNTRACKEDFILES=True
PS1='\[\e[1m\]\[\e[31m\][\[\e[33m\]\u\[\e[34m\]@\[\e[35m\]\h\[\e[36m\] \W\[\e[37m\]\[\e[3m\]$(__git_ps1 " (%s)")\[\e[23m\]\[\e[31m]\]\[\e[37m\]\$\[\e[0m\] '

# a fun greeter
quotes
