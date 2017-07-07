alias reload!='. ~/.zshrc'
alias info="info --vi-keys"
function ta { tmux attach -t $1 } # Attach to tmux sessions
alias shaqhacks="ssh ssjohns@$SHAQHACKS"

#listing
alias l="ls -la"
alias ld="ls -ld */" # list in long form only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Detect ls flavor
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
    export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
    colorflag="-G"
    export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

# Remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Git stuff
alias gdc="git diff --cached"

function hrun { heroku ps:scale web=0 &> /dev/null; echo $1 > /dev/stdout; heroku ps:scale web=1 &> /dev/null }

autoload -U zmv
alias mmv='noglob zmv -W' # Zsh multimove
alias cls='clear' # Good 'ol Clear Screen command

alias home="ssh ssjohns@$HOME_ADDRESS"
alias redditssh="ssh shaqhacks@$REDDIT_ADDRESS"

alias tl="tmux list-sessions"
function ta { tmux attach -t $1 } # Attach to tmux sessions
alias b2d='eval "$(boot2docker shellinit)"'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'






# # Docker stuff
# alias dco="docker-compose"
# alias dcp="dco run --service-ports web"
# alias dcr="dco run web"
# alias dsh="docker run -v $(pwd):/kipwire_root -t -i --link db:db kipwire_web bash"
# autoload -U zmv
# alias mmv='noglob zmv -W' # Zsh multimove
