# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# MESSAGE
echo "Changes Accepted"

# PATH
export ZSH="/Users/jordanbelmont/.oh-my-zsh"
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# THEMES
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

# WHOAMI
DEFAULT_USER=whoami

# UPDATES
export UPDATE_ZSH_DAYS=14
DISABLE_UPDATE_PROMPT="true" 

# HISTORY
HIST_STAMPS="dd.mm.yyyy"
SAVEHIST=0
HISTSIZE=0

# PLUGINS
plugins=(git)

# FUNCTIONS
function mkcd() {
   mkdir -p "$@" && cd "$_";
}

# SOURCE
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
# Removes .zcompdump files from Home Directory
source $ZSH/oh-my-zsh.sh

# VARIABLES
export HOMEBREW_CASK_OPTS="--no-quarantine"

# ALIASES
alias cat='bat'
alias ls='lsd -lhFA'
alias man='batman'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/jordanbelmont/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

