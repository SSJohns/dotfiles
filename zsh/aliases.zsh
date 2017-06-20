alias reload!='. ~/.zshrc'
alias info="info --vi-keys"
function ta { tmux attach -t $1 } # Attach to tmux sessions

# Git stuff
alias gdc="git diff --cached"

function hrun { heroku ps:scale web=0 &> /dev/null; echo $1 > /dev/stdout; heroku ps:scale web=1 &> /dev/null }

autoload -U zmv
alias mmv='noglob zmv -W' # Zsh multimove
alias cls='clear' # Good 'ol Clear Screen command
