# ~/.config/zsh/public/aliases.sh

alias refresh="source $HOME/.zshrc"
alias vim='nvim'
alias vi='nvim'
alias fd='fdfind'
alias c='clear'
alias cls='clear'
alias python='python3'

# Config aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias nvimconf="cd ${CONFIG_DIR}/nvim && nvim"

alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=/${HOME}"

alias csync="config add \
  $HOME/.zshrc \
  $ZSH_CONFIG_PUBLIC_DIR/ \
  $HOME/.tmux.conf \
  $CONFIG_DIR/nvim/ \
  $CONFIG_DIR/alacritty/ \
  $CONFIG_DIR/starship.toml"

