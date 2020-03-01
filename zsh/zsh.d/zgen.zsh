# load zgen
source "${HOME}/.zsh/zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

  # specify plugins here
  zgen oh-my-zsh

  # better command-not-found errors
  zgen oh-my-zsh plugins/command-not-found

  # better syntax highligthing for zsh itself
  zgen load zdharma/fast-syntax-highlighting

  # h allows you to highlight multiple words at once
  zgen load paoloantinori/hhighlighter

  # try use 256 colours if possible
  zgen load chrissicool/zsh-256color

  # generate the init script from plugins above
  zgen save
fi
