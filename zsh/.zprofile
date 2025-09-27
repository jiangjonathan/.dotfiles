# Setting PATH for Python 3.11 to prioritize system Python for system tools
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

# Initialize Homebrew environment variables
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv initialization for login shells
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

