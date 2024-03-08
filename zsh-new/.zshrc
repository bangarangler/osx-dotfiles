# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula-pro"

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
ENABLE_CORRECTION="true"

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
plugins=(git z you-should-use kubectl zsh-syntax-highlighting zsh-autosuggestions)

# Dracula Theme (for zsh-syntax-highlighting)
#
# https://github.com/zenorocha/dracula-theme
#
# Copyright 2021, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author George Pickering <@bigpick>
# @author Zeno Rocha <hi@zenorocha.com>
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES
# Default groupings per, https://spec.draculatheme.com, try to logically separate
# possible ZSH_HIGHLIGHT_STYLES settings accordingly...?
#
# Italics not yet supported by zsh; potentially soon:
#    https://github.com/zsh-users/zsh-syntax-highlighting/issues/432
#    https://www.zsh.org/mla/workers/2021/msg00678.html
# ... in hopes that they will, labelling accordingly with ,italic where appropriate
#
# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6272A4'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#50FA7B'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#50FA7B'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#50FA7B'
ZSH_HIGHLIGHT_STYLES[function]='fg=#50FA7B'
ZSH_HIGHLIGHT_STYLES[command]='fg=#50FA7B'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#50FA7B,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#FFB86C,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#FFB86C'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#FFB86C'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#BD93F9'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#8BE9FD'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#8BE9FD'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#8BE9FD'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#FF79C6'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#F1FA8C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#F1FA8C'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#F8F8F2'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[path]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#FF79C6'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#BD93F9'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#FF5555'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#F8F8F2'
ZSH_HIGHLIGHT_STYLES[default]='fg=#F8F8F2'

# END DRAC THEME 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

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
bindkey -v

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# TODO: work in progress mess with bat and fzf more
#alias fzfbat= 'fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

export BAT_THEME=Dracula

alias fish='asciiquarium'
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
# TODO: GET MORE ASCII
alias skeleton='lolcat /Users/jonathanpalacio/dev/ascii/skull.txt'
alias casper='lolcat /Users/jonathanpalacio/dev/ascii/casper-evil.txt'
alias succubus='lolcat /Users/jonathanpalacio/dev/ascii/succubus.txt'
alias warlock='lolcat /Users/jonathanpalacio/dev/ascii/warlock.txt'
alias taz='lolcat /Users/jonathanpalacio/dev/ascii/taz.txt'
alias unicorn='lolcat /Users/jonathanpalacio/dev/ascii/unicorn.txt'
alias devil='lolcat /Users/jonathanpalacio/dev/ascii/devil-made-me.txt'
alias charizard='lolcat /Users/jonathanpalacio/dev/ascii/charizard.txt'
alias blastoise='lolcat /Users/jonathanpalacio/dev/ascii/blastoise.txt'
alias ninetails='lolcat /Users/jonathanpalacio/dev/ascii/ninetails.txt'
alias arcanine='lolcat /Users/jonathanpalacio/dev/ascii/arcanine.txt'
alias gengar='lolcat /Users/jonathanpalacio/dev/ascii/gengar.txt'
alias gyarados='lolcat /Users/jonathanpalacio/dev/ascii/gyarados.txt'
alias eevee='lolcat /Users/jonathanpalacio/dev/ascii/eevee.txt'
alias dragonite='lolcat /Users/jonathanpalacio/dev/ascii/dragonite.txt'
alias lady='lolcat /Users/jonathanpalacio/dev/ascii/lady.txt'

function logPretty() {
  figlet -f whimsy $1 | lolcat
}	

# TODO: POSTGRES Mainly use in docker
# alias pg_start="pg_ctl -D /usr/local/var/postgres start"
# alias pg_stop="pg_ctl -D /usr/local/var/postgres stop"

# TMUXINATOR ALIASES
alias workFE="tmuxinator workFE"
alias workBE="tmuxinator workBE"
alias dfiles="tmuxinator df"
alias pcstatus="tmuxinator pcstatus"
alias workProd="tmuxinator workProd"
alias bangProj='tmuxinator bangProj'
alias amReact='tmuxinator amReact'
alias amGo="tmuxinator amGo"
alias bdsmTracker='tmuxinator bdsmTracker'
# alias vaultWeb='tmuxinator vaultWeb'
# alias vaultBounceList='tmuxinator vaultBounceList'
# alias vaultWebPlus='tmuxinator vaultWebPlus'
# alias vssClaimsUi='tmuxinator vss-claims-ui'

# SYSTEM OSX
alias c="clear"
alias e="exit"
alias update='brew update && brew upgrade && brew upgrade --cask && brew cleanup'
# alias fuck='sudo !!'
alias fuck='sudo $(fc -ln -1)'
# alias ls=colorls —-sd
# alias yabaistart='brew services start koekeishiya/formulae/yabai && brew services start skhd'
# alias yabaistop='brew services stop koekeishiya/formulae/yabai && brew services stop skhd'
# alias iconsoff='defaults write com.apple.finder CreateDesktop -bool false;killall Finder;say icons hidden'
# alias iconson='defaults write com.apple.finder CreateDesktop -bool true;killall Finder;say icons visible'
# alias ctags="`brew --prefix`/bin/ctags"

# DOCKER
alias d="docker"
# alias dcu="docker-compose up"
alias dcu="docker compose up"
# alias dcud="docker-compose up -d"
alias dcud="docker compose up -d"
# alias dcd="docker-compose down"
alias dcd="docker compose down"
# alias dcuba="docker-compose up --build"
alias dcuba="docker compose up --build"
# alias dcb="docker-compose build"
alias dcb="docker compose build"
# alias dcr="docker-compose run --rm"
alias dcr="docker compose run --rm"
# alias dce="docker-compose exec"
alias dce="docker compose exec"
alias dps="d ps"
alias dpsa="d ps -a"
alias dils="d image ls"
alias dcls="d container ls"
alias dl="d logs"

# LAZY
alias ldoc="lazydocker"
alias lg="lazygit"

# KUBERNETES ALIASES
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get services"
alias kgsc="kubectl get sc"
alias kgpv="kubectl get pv"
alias kgpvc="kubectl get pvc"
alias kgcm="kubectl get configmap"
alias kgns="kubectl get namespaces"
alias kns="kubens"
alias kctx="kubectx"

# TODO: EXPERIMENTAL
# alias insiders='code-insiders'

# TODO: TMUX
alias t="tmux"
# Attach to any (i don't care once inside can got to any with prefix+w)
alias taa="t a"
# Attach to named session (ta df) will attach to dotfiles
alias ta="t a -t"
# Short cut for tmux new -s <session-name>
alias tn="t new -s"
# Short cut for tmux kill-session
alias tk="t kill-session"
# Short cut for tmux kill-server
alias tka="t kill-server"

# TODO: WORK NOWIGENCE
alias zeus="sshpass -p ${ZEUS_PW} ssh ${ZEUS_USER}"
alias peg="sshpass -p ${PEGASUS_PW} ssh ${PEGASUS_USER}"
alias cerb="sshpass -p ${CERBERUS_PW} ssh ${CERBERUS_USER}"
alias hyd="sshpass -p ${HYDRA_PW} ssh ${HYDRA_USER}"
alias ods="sshpass -p ${ORION_DEV_PW} ssh ${ORION_DEV_USER}"
alias v1s="sshpass -p ${V1_PW} ssh ${V1_USER}"
alias aris="sshpass -p ${ARIS_PW} ssh ${ARIS_USER}"
alias nowwp="sshpass -p ${NOW_WP_PW} ssh ${NOW_WP_USER}"
alias mav="sshpass -p ${MAVERICK_PW} ssh ${MAVERICK_USER}"
# CONFLICT with GOOSE tool
# alias goose="sshpass -p ${GOOSE_PW} ssh ${GOOSE_USER}"
alias merlin="sshpass -p ${MERLIN_PW} ssh ${MERLIN_USER}"

# TODO: PERSONAL
alias bang="sshpass -p ${BANGARANGLER_PW} ssh ${BANGARANGLER_USER}"

# TODO:
function stowrestore() {
  ~/dotfiles/
  ../dotfiles/stowrestore
}

function startday() {
  ~/dotfiles/
  ../dotfiles/start_day.py
  cd -
}

function gline() {
	cd /users/jonathanpalacio/Desktop/Nowigence/pluaris-prod
	git log --shortstat --author $1 --since "10 years ago" --until "today" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
  # git log --shortstat --author $1 --since "2021-1-1" --until "2021-4-1" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
}

# TODO: ASDF
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
# . /usr/local/opt/asdf/libexec/asdf.sh

# GO
. ~/.asdf/plugins/golang/set-env.zsh
export ASDF_GOLANG_MOD_VERSION_ENABLED=true
# export PATH=$PATH:/usr/local/go/bin
# export PATH=$PATH:$(go env GOPATH)/bin
# export GO111MODULE=auto

source /opt/homebrew/opt/spaceship/spaceship.zsh

