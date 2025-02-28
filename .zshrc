# PORTABLE FUNCTIONS FOR SETUP
command_exists() {
    command -v "$@" >/dev/null 2>&1
}

export ZSH_THEME="gallois"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    tmux
    poetry
    zsh-autocomplete
    git-extra-commands
    uv
)


# Compilation flags
export ARCHFLAGS="-arch x86_64"
# Architecture-specific setup
if [ "$(arch)" = "arm64" ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
  path=('/opt/homebrew/bin' $path)
else
  eval $(/usr/local/bin/brew shellenv)
  path=('/usr/local/bin' $path)
fi


# Set PATH once with all components
export PATH="$HOME/Binaries:/usr/local/sbin:$HOME/.cargo/bin:$PATH"

# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set default editor
export EDITOR='vim'



# Source external alias file if it exists
if [ -f "$HOME/.config/alias.sh" ]; then
    source "$HOME/.config/alias.sh"
fi

# Source Oh-My-Zsh at the end for proper overrides
source $ZSH/oh-my-zsh.sh