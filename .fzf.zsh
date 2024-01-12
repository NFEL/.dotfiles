# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nfel/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/nfel/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/nfel/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/nfel/.fzf/shell/key-bindings.zsh"
