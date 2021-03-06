# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# PS1="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%M %{$fg[red]%}%~%{$fg[blue]%}]%{$reset_color%}$%b "

# This makes check status on large git repositories a lot faster
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

# Vi bindings
bindkey -v

# fzf bindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
	  vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
