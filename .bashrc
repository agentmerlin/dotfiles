if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

# The Fuck Aliases
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
eval "$(thefuck --alias damnit)"

#----------------
# TERMINAL NAMING
#----------------
function tabname {
   printf "\e]1;$1\a"
}
function winname {
   printf "\e]2;$2\a"
}

#------------------
# GIT AUTO COMPLETE
#------------------
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH=/usr/local/bin:$PATH:/usr/local/share/npm/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export MAVEN_OPTS=-Xmx1024m


# ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#-------------------
# Personnal Aliases
#-------------------

#Chrome For Mac
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias cls='clear'
alias prof='echo /etc/profile'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

alias dir='ls'

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
