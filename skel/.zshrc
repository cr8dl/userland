

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz compinit
compinit

# Alias
if [[ `uname` == "Linux" ]] ; then
    # Ubuntu/Debian renamed bat
    alias bat=batcat
fi

alias less=bat
alias vim=nvim
alias vi=nvim
alias nv=nvim
export EDITOR=vi
eval "$(starship init zsh)"
# pyenv
cd ~/
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

