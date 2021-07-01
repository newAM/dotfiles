# helper for agnoster theme
DEFAULT_USER="alex"

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

set_alias() {
    alias ccat='bat --style plain'
    alias cfg='config'
    alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    alias g='git'
    alias v='nvim'
    alias vi='nvim'
    alias vim='nvim'
    alias vrc='nvim $HOME/.config/nvim/init.vim'
    alias vzrc='nvim $HOME/.zshrc'
    alias acast='asciinema'
    alias git-rm-merged='git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
    alias dcpush='docker-compose push'
    alias hex="printf '0x%x\n'"
    alias udevrst="sudo udevadm control --reload-rules && sudo udevadm trigger"
}

# let nixos manage the rest of the configuration
if [[ "$(uname -a)" == *"NixOS"* ]]; then
    set_alias
    return
fi

# too many plugins slow down shell startup.
plugins=(
    bgnotify
    docker-compose
    fzf
    git
    tmux
    zsh-autosuggestions
    zsh-interactive-cd
    zsh-syntax-highlighting
)

HIST_STAMPS="yyyy-mm-dd"

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=8192

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# start tmux in local sessions
if [[ -n $SSH_CONNECTION ]]; then
    ZSH_TMUX_AUTOSTART=false
else
    ZSH_TMUX_AUTOSTART=true
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# User configuration

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
    OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
    zle -N self-insert url-quote-magic
}
pastefinish() {
    zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ripgrep configuration
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgreprc"

# Preferred editor for local and remote sessions
export EDITOR='nvim'

autoload -U compinit
compinit

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
set_alias
setopt complete_aliases
