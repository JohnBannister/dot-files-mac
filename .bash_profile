# source /usr/local/lib/dnx/bin/dnvm.sh

export PS1='\W $ '

export PATH=/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin:~/bin:/Library/TeX/texbin:/usr/local/sbin:$PATH

export MANPATH=/usr/share/man:/usr/local/share/man
export MANSECT=0:1:8:2:3:4:5:6:7:9:0p:1p:3p:tcl:n:l:p:o

alias ls="ls --color=auto"
alias la="ls -a"
alias ll="ls -l"
alias l="ls"

alias more="less"
export PAGER=/usr/local/bin/less

alias h="history"
alias grep="grep --color=auto"
alias sudo='sudo '
alias update='brew update; brew upgrade; \
    brew cleanup; npm install npm -g; npm update -g; \
        conda update -y --all; conda clean -y -p; conda clean -y -t; \
            opam update; opam upgrade '
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


eval `gdircolors /Users/john/src/dircolors-solarized/dircolors.256dark`


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
#for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	#[ -r "$file" ] && [ -f "$file" ] && source "$file";
    #done;
#unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;


# Add tab completion for bash
#if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
#	source "$(brew --prefix)/share/bash-completion/bash_completion";
#elif [ -f /etc/bash_completion ]; then
#	source /etc/bash_completion;
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source /Users/john/src/fuzzy_bash_completion/fuzzy_bash_completion
fuzzy_replace_filedir_xspec

# colored man pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

# more 'violent' colors for man pages
#export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
#export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
#export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
#export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
#export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
#export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
#export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode


# added by Anaconda3 4.4.0 installer
export PATH="/Users/john/.anaconda3/bin:$PATH"
export PATH="/Users/john/emacs/bin:$PATH"

# OPAM configuration
. /Users/john/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
