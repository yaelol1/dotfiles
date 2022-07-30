# flex on the ubuntu
neofetch

# Enable colors and change prompt:
autoload -U colors && colors

# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt restore

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
#menu select
#zstyle ':completion:*' menu select
# auto complete case insensitivity
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

compinit

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

# Alias

# exa - ls
# general use
alias ls='exa'                                                          # ls
alias l='exa -lbF --git'                                                # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'                                         # tree


# Spaceship configuration
	# line
	SPACESHIP_PROMPT_SEPARATE_LINE=false
	SPACESHIP_PROMPT_ADD_NEWLINE=false

	# symbol
	SPACESHIP_CHAR_SYMBOL=■\ 

	# user
	SPACESHIP_USER_SHOW=true
	SPACESHIP_HOST_SHOW=true
	SPACESHIP_DIR_SHOW=true

	# git
	SPACESHIP_GIT_SHOW=true

	# time
	SPACESHIP_TIME_SHOW=false
# Spaceship
autoload -U promptinit; promptinit
prompt spaceship

# Spicetify
export PATH=$PATH:/home/y421/.spicetify
alias config='/usr/bin/git --git-dir=/home/y421/.dotfiles/git --work-tree=/home/y421'
