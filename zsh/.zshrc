# Source custom aliases
source $HOME/.config/zsh_aliases

# pyenv initialization for interactive shells
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


. "$HOME/.local/bin/env"
