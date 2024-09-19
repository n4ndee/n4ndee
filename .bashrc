HISTCONTROL=ignoreboth
HISTFILESIZE=2000
HISTIGNORE="ls*:ll:pwd:history:h:clear:c:help*: :."
HISTSIZE=${HISTFILESIZE}
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND="history -a"

alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias h="history"
alias c="clear"

# Configure fnm Node version manager environment
eval "$(fnm env --use-on-cd --shell bash)"

# Hugo path
PATH="~/My Drive/Windows/Programs/Hugo:$PATH"

# Custom prompt
s="\[\e[" # Start
e="m\]" # End
fg="${s}3"
bg="${s}4"
brfg="${s}9" # Bright foreground
brbg="${s}10" # Bright background
rgb="8;2;"

black="0${e}"
red="1${e}"
green="2${e}"
yellow="3${e}"
blue="4${e}"
magenta="5${e}"
cyan="6${e}"
white="7${e}"
dark="${rgb}66;55;113${e}"

default="9${e}"
reset="${s}${black}"

branch=$'\uf418'
clock=$'\ue641'
folder=$'\uf114'
laptop=$'\uf109'
lightning=$'\udb85\udc0b'
semicircle=$'\ue0b6'
triangle=$'\ue0b0'

PS1="\n${fg}${yellow}${semicircle}"
PS1+="${bg}${yellow}${fg}${black}${clock} \t " # Time
PS1+="${brbg}${blue}${fg}${yellow}${triangle} "
PS1+="${fg}${default}\u ${laptop}  \h " # User, host
PS1+="${brfg}${blue}${bg}${dark}${triangle}"
PS1+="${fg}${default} ${folder}  \w " # Working directory
PS1+="${fg}${dark}${bg}${white}${triangle} "
PS1+="${branch} `__git_ps1 '%s'` " # Git branch
PS1+="${fg}${white}${bg}${default}${triangle}"
PS1+="\n${fg}${yellow}${lightning}${reset}"
