# flex on the ubuntu
uwufetch 

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Options
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


#menu select
zstyle ':completion:*' menu select
# auto complete case insensitivity
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#_comp_options+=(globdots) # include hidden files

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

unsetopt menu_complete
unsetopt flowcontrol

# no se qué hace
setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history


# Alias
# exa - ls
# general use
alias ls='exa  --group-directories-first'                                                          # ls
alias l='exa -lbF --git  --group-directories-first'                                                # list, size, type, git
alias ll='exa -lbGF --git  --group-directories-first'                                             # long list
alias llm='exa -lbGd --git --sort=modified  --group-directories-first'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale  --group-directories-first'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale  --group-directories-first' # all + extended list
# specialty views
alias lS='exa -1 --group-directories-first'                                                              # one column, just names
alias lt='exa --tree --level=2  --group-directories-first'                                         # tree

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# apt
alias update='sudo apt update'
alias upg='sudo apt update && sudo apt upgrade'
alias s='apt search'
alias clean='sudo apt-get remove --purge $(deborphan)'
alias i='sudo apt install'
alias r='sudo apt remove'
alias ra='sudo apt autoremove'

# xclip
alias c='xclip'
alias v='xclip -o'

# batcat
alias cat='batcat --paging=auto --pager=less'

# Bare repo for dotfiles
alias gitmain='/usr/bin/git --git-dir=/home/y421/.dotfiles/git --work-tree=/home/y421'

# Bare repo for Documents
alias gitdoc='/usr/bin/git --git-dir=$HOME/Documents/.github --work-tree=$HOME/Documents'

# bspwm autorandr for polybar
alias startup='$HOME/.local/bin/startup'

# Plugins
#source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh
source ~/.config/zsh/alias-tips/alias-tips.plugin.zsh
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-completions/zsh-completions.plugin.zsh
source ~/.config/zsh/almostontop/almostontop.plugin.zsh
source ~/.config/zsh/zsh-auto-notify/auto-notify.plugin.zsh
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Spaceship
# Spaceship configuration
	# line
	SPACESHIP_PROMPT_SEPARATE_LINE=false
	SPACESHIP_PROMPT_ADD_NEWLINE=false

	# symbol
	SPACESHIP_CHAR_SYMBOL=■\ 

  # Node
  SPACESHIP_NODE_SHOW=false

	# user
  SPACESHIP_USER_SHOW=always
  SPACESHIP_USER_COLOR=green
	SPACESHIP_DIR_SHOW=true
	# SPACESHIP_USER_SHOW=true
	# SPACESHIP_HOST_SHOW=always

	# git
	SPACESHIP_GIT_SHOW=true

	# time
	SPACESHIP_TIME_SHOW=false
# Spaceship
autoload -U promptinit; promptinit
prompt spaceship

# Spicetify
export PATH=$PATH:/home/y421/.spicetify

# Golang PATH
export PATH=$PATH:/usr/local/go/bin

#exccercism path
export PATH=~/bin:$PATH

# Syntax highlighting for man
export PAGER="most"

#.local to PATH
export PATH="$HOME/.local/bin:$PATH"

# bin in PATH
export PATH=~/bin:$PATH
