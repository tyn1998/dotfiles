# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Add conda/bin to PATH
CONDABIN_D=$HOME/conda/bin
export PATH=$CONDABIN_D:$PATH

# Add ~/.fzf to PATH
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
