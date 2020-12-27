# Path to your oh-my-zsh installation.
export ZSH="/home/benicio/.oh-my-zsh"

ZSH_THEME=""
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%M %{$fg[red]%}%~%{$fg[blue]%}]%{$reset_color%}$%b "

# This makes check status on large git repositories a looot faster
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions github vagrant)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Personal aliases
source $HOME/.config/zsh/.aliases

