# Default editor
set -x EDITOR vim

# Default bat theme
set -x BAT_THEME gruvbox-dark

# To solve Perl's locale warning in fzf.vim box.
set -x LC_ALL zh_CN.UTF-8

# Disable fish welcome message
set fish_greeting

# pyenv init for fish
status is-interactive; and pyenv init --path | source
pyenv init - | source
