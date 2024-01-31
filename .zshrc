# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Secrets
if [ -e ~/.zsh_secrets ]; then
    source ~/.zsh_secrets
fi

# Aliases
alias vim="nvim"
