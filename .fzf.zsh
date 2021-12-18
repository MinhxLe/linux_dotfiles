# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
    source "/usr/share/doc/fzf/examples/key-bindings.zsh"
fi
if [ -f /usr/share/doc/fzf/examples/completion.zsh ]; then
    source "/usr/share/doc/fzf/examples/completion.zsh"
fi
