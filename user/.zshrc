# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tomastrajan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias idea="cls && /opt/intellij-idea/bin/idea.sh"

# Alias terminal utils
alias cls="clear"
alias refresh=". ~/.zshrc"
alias ll='ls -hnap --group-directories-first --color=auto'

# Alias navigation
alias github="cd ~/projects/github"
alias mobi="cd ~/projects/mobi"
alias uxf="cd ~/projects/mobi/rwc-uxframework-ng-jslib"
alias b2c="cd ~/projects/mobi/rwc-b2c-components-ng-jslib"
alias ob="cd ~/projects/omniboard/omniboard"
alias obmobi="mobi && cd rwc-codequeries && npm start"
alias obapp="cd ~/projects/omniboard/omniboard/app && npm start"
alias obapi="cd ~/projects/omniboard/omniboard/omniboard-api && npm run start:dev"
alias obwww="cd ~/projects/omniboard/omniboard/public && npm start"
alias obcli="cd ~/projects/github/analyzer && npm run watch"

# Alias GIT
alias gs='git status'
alias gitmobi="git config --add user.name 'Herich Tomas (U803909)' && git config --add user.email tomas.herich@mobi.ch"
alias gitmobiamend="gitmobi && git commit --amend --reset-author"
alias gitoss="git config --add user.name tomastrajan && git config --add user.email tomas.trajan@gmail.com"
alias glog='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Intellij IDEA
export WSL_ip_line=$(ipconfig.exe | grep "WSL" -n | awk -F ":" '{print $1+4}')
export DISPLAY=$(ipconfig.exe | awk -v a=$WSL_ip_line '{if (NR==a) print $NF":0.0"}' | tr -d "\r")
export LIBGL_ALWAYS_INDIRECT=1
export XCURSOR_SIZE=128
export GDK_SCALE=1
export GDK_DPI_SCALE=2
# sudo /etc/init.d/dbus start &> /dev/null

# Fix time
# sudo ntpdate pool.ntp.org

# Connecting to services running on Win 10
export WSL_HOST_IP=$(awk '/nameserver/ { print $2 }' /etc/resolv.conf)
#export OB_DB_HOST=$WSL_HOST_IP

# Run
cd  ~
