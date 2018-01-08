# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/razzle/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="awesomepanda-git-super-status"

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
plugins=()
GIT_PROMPT_EXECUTABLE="haskell"

source $ZSH/oh-my-zsh.sh
source ~/.zsh-git-prompt/zshrc.sh

git_prompt_status() {
    git_super_status
}

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

unset LIBGL_DRIVERS_PATH
export DART_SDK=/home/razzle/darteditor-linux-ia32/dart/dart-sdk/
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_151
export ANDROID_HOME=/home/razzle/devtools/android/sdk
export GRADLE_HOME=/home/razzle/devtools/android/studio/gradle/gradle-3.4.1
export SCALA_HOME=/home/razzle/devtools/scala/scala-2.11.7
export GOROOT=/home/razzle/devtools/go/go1.5.1.linux-amd64/go
export KOTLIN_HOME=/home/razzle/devtools/kotlin
export MAVEN_HOME=/home/razzle/devtools/maven/apache-maven-3.3.9
export PURESCRIPT=/home/razzle/devtools/purescript
export KOBALT=/home/razzle/devtools/kobalt
export SPARK_HOME=/home/razzle/devtools/spark/spark-2.0.2-bin-hadoop2.6

export PATH=$PATH:/home/razzle/.config/panel_scripts:$ANDROID_HOME/platform-tools/:$ANDROID_HOME/tools/:$ANDROID_HOME/build-tools/25.0.2/:$DART_SDK/bin/:/home/razzle/devtools/scala/scala-2.11.4/bin/:$JAVA_HOME/bin:$GRADLE_HOME/bin:$TOOLCHAIN/bin:$SCALA_HOME/bin:$GOROOT/bin:$KOTLIN_HOME/bin:$MAVEN_HOME/bin:/home/razzle/devtools/swift/usr/bin:$PURESCRIPT:$KOBALT/bin:/home/razzle/devtools/maven/bin:$SPARK_HOME/bin:`yarn global bin path`
export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH:$ANDROID_HOME/tools/lib/
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export LIBGL_DEBUG=verbose

export ANDROID_NDK=/home/razzle/devtools/android/sdk/ndk-bundle
export TOOLCHAIN=/tmp/ffmpeg
export SYSROOT=$TOOLCHAIN/sysroot/
eval $(thefuck --alias)
export ANDROID_HVPROTO=ddm
export MPD_HOST=/home/razzle/.mpd/socket

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/razzle/.sdkman"
[[ -s "/home/razzle/.sdkman/bin/sdkman-init.sh" ]] && source "/home/razzle/.sdkman/bin/sdkman-init.sh"

# OPAM configuration
. /home/razzle/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias shake="adb shell input text \"RR\""
