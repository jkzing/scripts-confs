if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi
# Path to your oh-my-zsh installation.
export ZSH=/Users/Jingkai/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git autojump dirhistory vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
# export PATH="/Users/Jingkai/github/depot_tools:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
#

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

# proxy
function start_proxy {
    export http_proxy='127.0.0.1:1087'
    export HTTPS_PROXY='127.0.0.1:1087'
}

function stop_proxy {
    export http_proxy=
    export HTTPS_PROXY=
}

function get_lines {
    extension=$1
    find . -name "*.${extension}" -not -path "**/node_modules/*"| xargs wc -l
}

function toggle_hidden {
  defaults write com.apple.finder AppleShowAllFiles $1
}

# Zaihui settings
export PIP_REQUIRE_VIRTUALENV=true
alias goweinre="weinre --boundHost -all- --httpPort 3000"
alias py3="source ~/Virtualenvs/py3/bin/activate"
alias startygg="python manage.py runserver"
alias annm="git cherry-pick 5114c9f"
alias arcl="arc land --onto dev --keep-branch"
alias jbet="ssh zaihui@54.223.27.76"
alias jbey="ssh zaihui@52.80.88.79"
alias jph="ssh zaihui@phoebe.kezaihui.com"
alias jucl="ssh zaihui@uncle.kezaihui.com"
alias jlx="ssh ubuntu@lx.zaihuiba.com"
alias jgl1="ssh ubuntu@52.80.124.160"
alias jgl2="ssh ubuntu@54.223.87.37"
alias jkzh1="ssh ubuntu@54.223.42.230"
alias jkzh2="ssh ubuntu@54.223.97.149"
alias jwzh="ssh ubuntu@54.222.138.220"
alias jccm="ssh root@101.132.38.176"

# Jingkai alias
# eval "$(thefuck --alias fuck)"
alias dgo="python manage.py"
alias jzhao="source ~/Virtualenvs/jzhao/bin/activate"
alias vwasm="source ~/Virtualenvs/wasm/bin/activate"
alias gpt="git push --follow-tags"
alias gptf="git push --tags -f"
alias gitp="git pull --rebase"
alias gits="git status"
alias gitl="git log --decorate --graph --color --date=relative | emojify | less"
alias hist="!git --no-pager log --color --pretty=format:'%C(yellow)%h%C(reset)%C(bold red)%d%C(reset) %s %C(black)— %an (%ad)%C(reset)' --relative-date | emojify | less --RAW-CONTROL-CHARS"
alias pc="proxychains4"
# alias gitl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --graph"
alias gitb="git branch"
alias gita="git add ."
alias gitco="git checkout"
alias gitcm="git commit"
alias dt="~/github/Command-Line-Youdao-Dictionary/dict"
alias lines=get_lines
alias lkdock="defaults write com.apple.Dock position-immutable -bool yes"
alias frdock="defaults write com.apple.Dock position-immutable -bool no"
alias nnpm="npm --registry=https://registry.npmjs.org"
alias npmls="npm ls --depth 0"
alias tpm="npm --registry=https://registry.npm.taobao.org"
alias hpm="npm --registry=https://tnt.kezaihui.com"
alias hyarn="yarn --registry=https://tnt.kezaihui.com"
alias deploy_atom="rm -rf ~/.atom/packages/fuzzy-finder-prefix && cp -r ~/github/fuzzy-finder-prefix ~/.atom/packages/"
alias code="/usr/bin/open -a '/Applications/Visual Studio Code.app'"
alias govps="ssh root@23.83.229.230 -p 28557"
alias tmuxk="tmux ls | grep : | cut -d. -f1 | xargs kill"
alias flush_dns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# chrome aliases
alias chrome="/usr/bin/open -a '/Applications/Google Chrome.app'"
# alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# show time in history logs
export HISTTIMEFORMAT="%F %T `whoami` "

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(/usr/libexec/path_helper -s)



# SPACESHIP ZSH THEME settings
# ORDER
SPACESHIP_PROMPT_ORDER=(
    time
    user
    host
    dir
    git
    node
    hg
    ruby
    xcode
    swift
    golang
    php
    rust
    julia
    docker
    venv
    pyenv
    line_sep
    vi_mode
    char
)

# PROMPT
SPACESHIP_PROMPT_SYMBOL="➜"
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "
# # TIME
SPACESHIP_TIME_SHOW=false
SPACESHIP_TIME_PREFIX="at "
SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_TIME_FORMAT=false
SPACESHIP_TIME_12HR=false
SPACESHIP_TIME_COLOR="yellow"
# # USER
SPACESHIP_USER_SHOW=true
SPACESHIP_USER_PREFIX="with "
SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_USER_COLOR="yellow"
SPACESHIP_USER_COLOR_ROOT="red"
# # HOST
SPACESHIP_HOST_SHOW=true
SPACESHIP_HOST_PREFIX="at "
SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_HOST_COLOR="green"
# # DIR
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR="cyan"
# # GIT
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX="on "
SPACESHIP_GIT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_GIT_SYMBOL=" "
# GIT BRANCH
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_BRANCH_PREFIX="$SPACESHIP_GIT_SYMBOL"
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_BRANCH_COLOR="magenta"
# GIT STATUS
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_PREFIX=" ["
SPACESHIP_GIT_STATUS_SUFFIX="]"
SPACESHIP_GIT_STATUS_COLOR="red"
SPACESHIP_GIT_STATUS_UNTRACKED="?"
SPACESHIP_GIT_STATUS_ADDED="+"
SPACESHIP_GIT_STATUS_MODIFIED="!"
SPACESHIP_GIT_STATUS_RENAMED="»"
SPACESHIP_GIT_STATUS_DELETED="✘"
SPACESHIP_GIT_STATUS_STASHED="$"
SPACESHIP_GIT_STATUS_UNMERGED="="
SPACESHIP_GIT_STATUS_AHEAD="⇡"
SPACESHIP_GIT_STATUS_BEHIND="⇣"
SPACESHIP_GIT_STATUS_DIVERGED="⇕"
# # HG
SPACESHIP_HG_SHOW=false
# HG BRANCH
SPACESHIP_HG_BRANCH_SHOW=false
# HG STATUS
SPACESHIP_HG_STATUS_SHOW=false
# # NODE
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
SPACESHIP_NODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_NODE_SYMBOL="⬢ "
SPACESHIP_NODE_COLOR="green"
# # RUBY
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
SPACESHIP_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_RUBY_SYMBOL="💎 "
SPACESHIP_RUBY_COLOR="red"
# # XCODE
SPACESHIP_XCODE_SHOW_LOCAL=false
# # SWIFT
SPACESHIP_SWIFT_SHOW_LOCAL=false
# # GOLANG
SPACESHIP_GOLANG_SHOW=false
# # PHP
SPACESHIP_PHP_SHOW=false
# # RUST
SPACESHIP_RUST_SHOW=false
# # JULIA
SPACESHIP_JULIA_SHOW=false
# # DOCKER
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_PREFIX="on "
SPACESHIP_DOCKER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DOCKER_SYMBOL="🐳 "
SPACESHIP_DOCKER_COLOR="cyan"
# # VENV
SPACESHIP_VENV_SHOW=true
SPACESHIP_VENV_PREFIX="env "
SPACESHIP_VENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VENV_COLOR="blue"
# # PYENV
SPACESHIP_PYENV_SHOW=false
# SPACESHIP_PYENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_PYENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_PYENV_SYMBOL="🐍 "
# SPACESHIP_PYENV_COLOR="yellow"
# # VI_MODE
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"
SPACESHIP_VI_MODE_COLOR="white"

export TERM=xterm-256color

# tmux env
export EDITOR=vim

# phantomjs cdn
export PHANTOMJS_CDNURL=http://cnpmjs.org/downloads

# chromedriver cdn
export CHROMEDRIVER_CDNURL=http://npm.taobao.org/mirrors/chromedriver


# homebrew source
# export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

source "/Users/Jingkai/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# virtualenvwrapper env 
export WORKON_HOME=~/Virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# nvm ENV
# need to stay in bottom
export NVM_DIR="/Users/Jingkai/.nvm"
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


