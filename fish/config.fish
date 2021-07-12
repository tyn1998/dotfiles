# Default editor
set -x EDITOR vim

# Disable fish welcome message
set fish_greeting

# pyenv init for fish
status is-interactive; and pyenv init --path | source
pyenv init - | source
