# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mahaloz/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE="nerdfont-complete"
#ZSH_THEME="agnoster" #"duellj" #"jonathan" #"agnoster"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git)
plugins=(virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration


# Powerline Config
POWERLEVEL9K_VIRTUALENV_BACKGROUND="red"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND='010'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='010'
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='009'

POWERLEVEL9K_CUSTOM_FEDORA_ICON="echo λ"
POWERLEVEL9K_CUSTOM_FEDORA_ICON_BACKGROUND=008 #069
POWERLEVEL9K_CUSTOM_FEDORA_ICON_FOREGROUND=015
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_fedora_icon virtualenv context dir vcs)

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='004'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='000'

POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='000'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='005'

# MacOS: Fix ls colors 
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
alias ls="gls --color"
export TERM=xterm-256color

# MacOS: Fix Man and Font
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Load all of the plugins that were defined in ~/.zshrc


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

# vim bindings
set -o vi 

# Configuration for virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh 

# custom scripts
export PATH="$PATH:/Users/mahaloz/launch_scripts"
export PATH="$PATH:/Users/mahaloz/mc_modding/GeneratorFabricMod/bin"

# usefule aliases
alias tar-dir="tar -czvf"
export PYTHONBREAKPOINT=ipdb.set_trace

# added by travis gem
[ ! -s /Users/mahaloz/.travis/travis.sh ] || source /Users/mahaloz/.travis/travis.sh

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"
