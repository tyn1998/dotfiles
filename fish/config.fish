# Default editor
set -x EDITOR vim

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end
# pyenv-virtualenv init
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
