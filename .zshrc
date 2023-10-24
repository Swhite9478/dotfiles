# ~/.zshrc

# Load in config in pieces that are easier to track
export ZSH_CONFIG_PUBLIC_DIR="$HOME/.config/zsh/public"
source $ZSH_CONFIG_PUBLIC_DIR/exports.sh
source $ZSH_CONFIG_PUBLIC_DIR/aliases.sh
source $ZSH_CONFIG_PUBLIC_DIR/functions.sh

ZSH_THEME="gnzh"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

# Keep this at the bottom of the .zshrc, we are using starship, baby!
eval "$(starship init zsh)"
