export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode disabled # just remind me to update when it's time
zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(
  zsh-vi-mode
  git
  python
  golang
  yarn
  tmux
  zoxide
  tmux
  wakatime
  pip
  rust
  k
  cgapp
  goreleaser
  docker
  zsh-autosuggestions
)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh


# Go Version manager
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
eval "$(zoxide init zsh)"

# Wasmer
export WASMER_DIR="/home/nfel/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# JAVA Version manager
[ -s "/home/nfel/.jabba/jabba.sh" ] && source "/home/nfel/.jabba/jabba.sh"


# bun completions
[ -s "/home/nfel/.bun/_bun" ] && source "/home/nfel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#lf
LFCD="$HOME/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export ARCHFLAGS="-arch x86_64"



[ -s "$HOME/.web3j/source.sh" ] && source "$HOME/.web3j/source.sh"
export PATH="$HOME/.jenv/bin:$HOME/flutter/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PATH="$PATH:$HOME/.mpvc:$HOME/.mpvc/extras:$HOME/Applications/GoLand-2022.2.4/bin/goland.sh:$HOME/Applications/android-studio/bin:$HOME/Applications/weka-3-8-6/weka.sh:$HOME/Applications/:$GOPATH/bin:$HOME/.deta/bin:$HOME/Applications/AppImages:/usr/local/go/bin:$HOME/.android/platform-tools:$HOME/Android/tools/bin/:$HOME/go/bin/:$HOME/.local/bin/"

export \
  ANDROID_SDK_ROOT="$HOME/Android/" \
  ANDROID_HOME="$HOME/Android/" \
  PIPENV_IGNORE_VIRTUALENVS=1 \

export \
  GOPROXY=https://goproxy.io,direct \
  GOPRIVATE=git.mycompany.com,github.com/my/private \
  GOSUMDB=sum.golang.org \
  GOPHERJS_GOROOT="$(go1.18.10 env GOROOT)" \
  GOPATH=$HOME/go  
# export GOSUMDB=gosum.io+ce6e7565+AY5qEHUk/qmHc5btzW45JVoENfazw8LielDsaI+lEbq6

alias pvi="HTTPS_PROXY=http://localhost:1666 nvim ."
alias o="HTTPS_PROXY=http://localhost:1666 nvim ."


# Aesthetics 
echo "$(date '+%D %T' | toilet -f term -F border --gay)";
cat /home/nfel/.ascii/art/$(shuf -i 1-$(ls -A /home/nfel/.ascii/art/ | wc -w) -n 1)
alias flutter="HTTPS_PROXY=http://localhost:1666 flutter"
export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu"
