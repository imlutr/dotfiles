# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Use Node 18, by default (and don't output anything)
nvm alias default v18.20.2 >/dev/null 2>&1

# Secrets
if [ -e ~/.zsh_secrets ]; then
    source ~/.zsh_secrets
fi

# Make `./bin [command]` be equivalent to `[command]` (for work)
export PATH="./bin:$PATH"

# Aliases
alias vim="nvim"
