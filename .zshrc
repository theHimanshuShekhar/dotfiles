export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias explorer="explorer.exe"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/hshekhar/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun completions
[ -s "/home/hshekhar/.bun/_bun" ] && source "/home/hshekhar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# rust
. "$HOME/.cargo/env"

# golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

# setup default config directory
export XDG_CONFIG_HOME="$HOME/.config"

# snap path
export PATH="$PATH:/snap/bin"

# starship
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml
eval "$(starship init zsh)"
