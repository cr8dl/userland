

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz compinit
compinit


export EDITOR=vi
eval "$(starship init zsh)"
# pyenv
cd ~/
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# Aliases
source ~/.aliases

# Zsh autosuggestions
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

