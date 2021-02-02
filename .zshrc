# export PATH=$HOME/bin:/usr/local/bin:$PATH
#GIT Tue  2 Feb 2021 16:53:31 AEDT
# Path to your oh-my-zsh installation.
export ZSH="/Users/roberto/.oh-my-zsh"

autoload zmv
autoload -Uz zcalc
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#ZSH_THEME_RANDOM_CANDIDATES=( "pygmalion" "muse" "sorin" )
#ZSH_THEME="avit"

#--- prom
EMOJI=(💩 🐦 🚀 🐞 🎨 🐣 🐛 🪲🦞🐲 🥭 🍉 🌮 🍥 🍫 🍷 🥃 🍾🎮 🎲🌈 🍕 🐭 👽 ☕️ 🔬 💀 🐷 👀 😝 😆 😋 😇 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 😁 😂 😍 🥰 😎 😜 😡 🤬 🥶 😱 😓 🤔 😰 🙄 😬 😵 😪 🤧 🤑 🤠 😈 🤡 👻 👾😼 😸 😺 ✊ 👄 👅 💋 👩 👨 🧛 🧙 🧞 👼 🙋 🕺🏼 👨 🥾 🧤 🧦 🐝 🐌 🦖 🐢 🦀 🐋 🐬 🐳 🐘 🦘 🐎 🦮 🦚 🕊 🦨 🦔 🐾 🌵 🌳 🍀 🍄 🌺 🌞 🌎 🪐 🌟 🌈 ☄️ 🌤 ⛅️ 🌦 🌧 ⛈  🌩 🌨 ❄️  💦 🍎 🍇 🥝 🥑 🥦 🌶 🌽 🧄 🥕 🥔 🥐 🥖 🧀 🥨 🍟 🧁 🎂 🍪 🌰 🍾 🏈 🏀 ⚽️ 🎱 🪂 🚴 🥇 🏅 🎧 🎬 🎨 🎹 🎷 🥁 🎺 🎸 🎻 🎲 ♟ 🎯 🎮 🚒 🚡 🚔 🚃 🚞 🚝 🚄 🚅 🚈 🚂 🚆 🚇 🚉 🚊 ✈️  🛫 🛩  🛰 🚀 🚁 🛳 🚢 🚥 🎥 ☎️  📟 📻 ⏰ 💵 💴 💶 💷 💰 🔫 🧲 💣 🔮 🧬 💊 🦠 🔑 🧸 🔐 ❤️  💝 ⛔️ Ⓜ️  🛂 🛃  🔈 ♦️ 🌈)

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}
#prompt color
#no red,white
c=("green" "cyan" "yellow" "magenta")
cNa=$((${#c[@]}-1))
randomcolor=$(jot -r 1 0 $cNa)
randcc="${c[$randomcolor]}"
#prompt color

#no hace falta PROMPT="$(random_emoji)  "
#path ala derecha RPROMPT='%c'
#PROMPT="%*:`pwd`<$(random_emoji)>"
#PROMPT="%B%F{cyan}%*(%/)%b$(random_emoji)>> "
#PROMPT="%B%F{cyan}%*(%/)%b$(random_emoji)>> "
#echo $randcc

colori="%B%F{$randcc}"
PROMPT="$colori%*(%/)%b$(random_emoji)>> "
#-----prompt

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

#NUM=$(history -i | awk 'END{print}' | awk '{print $1}')
#PROMPT='(😼😺🤠`pwd`)>$NUM>'

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

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
HIST_STAMPS="dd.mm.yyyy"

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
alias ls="ls -aFG"
alias 5="ls -lth | head -5"
alias hh="history"
alias ranpwd="/usr/bin/openssl rand -base64 16"
alias ran="shuf -i14-216 -n3"
alias ran2="shuf -i6-593 -n3"
alias rae="shuf -i 106-9135 -n5"
alias ss="echo ${COLUMNS}x${LINES}"
alias c="clear"
alias spo="/usr/local/bin/spotify"
alias j="/usr/local/bin/spotify vol down"
alias k="/usr/local/bin/spotify vol up"
alias l="/usr/local/bin/spotify next"
alias h="/usr/local/bin/spotify prev"
alias .="/usr/local/bin/spotify pause"
alias s="/usr/local/bin/spotify status"
alias ec="vim $HOME/.zshrc"
alias sc="source $HOME/.zshrc"
alias vix=" /usr/bin/vim $HOME/.zshrc"
#alias ?="/usr/local/bin/spotify status"
alias enn="/Applications/dictionary"
#https://unix.stackexchange.com/questions/240751/choose-random-string-from-a-few-and-set-it-as-a-variable
a=("b" "g" "d" "p" "s" "t" "w" "y")
Na=$((${#a[@]}-1))
randomnum=$(jot -r 1 0 $Na)
randomchoice="${a[$randomnum]}"
#printf "randomnum is %d\na[randomnum] is '%s'\n" $randomnum "$randomchoice"
/usr/local/bin/fortune -ea |  /usr/local/bin/cowsay -$randomchoice | /usr/local/bin/lolcat 
export DOM="allthingscloud.info"
export PORT="443"
export eso="/Users/roberto/OneDrive/Azure/palabras/es.out"
export esd="/Users/roberto/OneDrive/Azure/palabras/"
alias expira="openssl s_client -servername $DOM -connect $DOM:$PORT | openssl x509 -noout -dates"
#----------
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

##funciones

es() {

    export fout="/Users/roberto/OneDrive/Azure/palabras"
	#cd $fout
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
	#printf "$1\t" >&1 >> es.out 2>&1 
	printf "$1\t" >&1 >> $fout/es.out 2>&1 

wget -qO- https://dle.rae.es/$1 | egrep '<meta property="og:description"' | sed 's/\<meta.*://g' | sed 's/">//g' | sed 's/description.*\=//g' | sed 's/"//g'  >&1 >> $fout/es.out 2>&1 
return 1
    else
return 0
    fi
}

exp () {
#encuentra y cuenta el patrón
egrep -i $1 "/Users/roberto/OneDrive/Azure/palabras/es.out"
egrep -c $1 "/Users/roberto/OneDrive/Azure/palabras/es.out"
egrep -c ^$1 "/Users/roberto/OneDrive/Azure/palabras/es.out" 
}

exp2 () {
#encuentra y cuenta el patrón
egrep -i $1 "/Users/roberto/OneDrive/Azure/palabras/es.out"
egrep -c $1 "/Users/roberto/OneDrive/Azure/palabras/es.out"

egrep -c ^$1 "/Users/roberto/OneDrive/Azure/palabras/es.out" 
if [[ $? != 0 ]] 
 then # la busca sino está incluida y si existe salir, no más duplicados
	es $1
else
	return 1
fi

}
que () {
#for p in `cat $1 | awk '{ print $1}'`; do es $p; sleep 5; done
for p in `cat $1 | awk '{ print $1}'`; do exp2 $p; sleep 5; done
} 

en () { 
export enfout="/Users/roberto/OneDrive/Azure/palabras"
#    if [ "$1" != "" ] # or better, if [ -n "$1" ]
   if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        printf "$1\t" >&1 >> $enfout/en.out 2>&1
        /Applications/dictionary $1 >&1 >>$enfout/en.out 2>&1
        printf "\n" >&1 >> $enfout/en.out 2>&1 #línea en blanco
return 1
    else
return 0
    fi

}

ranes () { 
#http://zsh.sourceforge.net/Intro/intro_4.html > randline
export ff="/Users/roberto/OneDrive/Azure/palabras/es.out"
	integer z=$(wc -l <$ff) 
	sed -n $[RANDOM %z+1]p $ff
}
alias ales="ranes"
ales

cbing () {
export insta="/Users/roberto/OneDrive/Fotos(oficial)/Instagram"
export bing="/Volumes/[C] W10x/Users/rober/AppData/Local/Microsoft/BingWallpaperApp/WPImages"
if [[ ! -a $bing ]]; then
#echo "$bing don't exist"
return 0
else
cd $bing
cp -n *.jpg $insta
cd 
return 1
fi
}

cbing 
