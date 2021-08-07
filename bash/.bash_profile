# .bash_profile

# Add pyenv to PATH -- Step 1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

# Add pyenv to PATH -- Step 2
eval "$(pyenv init --path)"

# Fake way to set fish as "default" shell
export SHELL=/home/tyn/conda/bin/fish
exec $SHELL -l
