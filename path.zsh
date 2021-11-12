# Load dotfiles bin
export PATH="$HOME/.dotfiles/bin:$PATH"

# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Load flutter
export PATH="$HOME/Code/app/flutter/bin:$PATH"

# Load depot_tools for chromium
export PATH="$HOME/Code/oss/depot_tools:$PATH"

# Load sublime text cli
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# nvm-related fix for global installs
export PATH="$(npm get prefix)/bin:$PATH"
