# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tyn/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/tyn/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/tyn/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/tyn/.fzf/shell/key-bindings.bash"
