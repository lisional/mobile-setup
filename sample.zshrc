#https://github.com/robbyrussell/oh-my-zsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=/Volumes/Users_Data/Users/alision/.oh-my-zsh

zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'

# Fix error no match found when filter is *.fileextension for example
unsetopt nomatch

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_TIME_SHOW=true

SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_STATUS_SHOW=false

# ORDER
SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
)

# Issue: https://github.com/denysdovhan/spaceship-prompt/issues/343
SPACESHIP_DIR_TRUNC_REPO=false

export ANDROID_HOME=/Volumes/Users_Data/Users/alision/Library/Android/sdk
export ANDROID_SDK=$ANDROID_HOME

export PATH=$RUBY_PATH:/usr/local/bin:$HOME/.local/bin:$HOME/bin:$HOME/dev/flutter/bin:$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/Library/Python/3.7/bin
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

#Mediacenter
alias gohome='ssh alision@homecenter'

#Magic mirror
alias gomirror='ssh pi@raspberrypi'

#PiHole
alias gopihole='ssh pi@192.168.1.139'

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/swagger-codegen@2/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Volumes/Users_Data/Users/alision/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Volumes/Users_Data/Users/alision/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Volumes/Users_Data/Users/alision/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Volumes/Users_Data/Users/alision/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval $(thefuck --alias)
