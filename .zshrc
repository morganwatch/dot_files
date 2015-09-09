
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR='vim'
export PATH="$HOME/.node/bin:$PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$PATH:/usr/local/bin:Users/morganwaters/Documents/Colorado/Workshop/chrome/depot_tools:/Users/morganwaters/utils::/Users/morganwaters/bin:/Users/morganwaters/bin:/Users/morganwaters/.node/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$GOPATH/bin"
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nv="open /Applications/Notational\ Velocity.app/"

# Fix Clock
alias cl="killall -KILL SystemUIServer"

disable r

#$(boot2docker shellinit)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

##export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

#### originally from .aliases 
# Shortcuts
alias b="cd /usr/local/Cellar/"
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias c="cd ~/code"
alias g="cd ~/Documents/Colorado/Workshop/"
alias h="history"
alias j="cd ~/Documents/time_to_job/"
alias m="cd ~/Dropbox/Documents/memphis/"

alias t="tmux new-session -s r-devel"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; brew cask update; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# From HN
alias serve='python -m SimpleHTTPServer 8000'
alias mem='top -l1 | grep PhysMem'
alias q='exit'
function search() { find . -iname "*$@*" | less; }
alias l='ls -laFT'
alias ll='ls -1aF'
alias k='ls -laFTrt'
alias kk='ls -1aFrt'
alias history='fc -l 1'
alias rd=rmdir
alias vg='vagrant'
alias yt='cd $HOME/downloads; youtube-dl --verbose'
alias yt3='cd $HOME/downloads; youtube-dl --verbose --extract-audio --audio-format mp3 '
alias it='open /Applications/itunes.app'

# Alias creator
 function ali() {  
   echo "alias $1='${@:2}'" >> ~/.zshrc 
   echo "made alias:";  
   echo "alias $1='${@:2}'";  
   source ~/.zshrc;  #reload bashrc  
  }

alias vup='vagrant up'
alias vdn='vagrant halt'
alias sv='ssh vagrant'
alias o="open"
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'

# Steam Discounts
alias dis='python /Users/morganwaters/code/python_scripts/discounts.py'

export NODE_PATH=/usr/local/lib/node_modules

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# RVM LOADING
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
