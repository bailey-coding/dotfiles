# load zgen
source "${HOME}/.zsh/zgen/zgen.zsh"

# Potential theme customisations
# . "${HOME}/.zsh/zsh.d/theme-before.zsh"

# if the init script doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

  # specify plugins here
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/man

  # better command-not-found errors
  zgen oh-my-zsh plugins/command-not-found

  zgen oh-my-zsh plugins/rust

  # better syntax highligthing for zsh itself
  zgen load zdharma/fast-syntax-highlighting

  # h allows you to highlight multiple words at once
  zgen load paoloantinori/hhighlighter

  # try use 256 colours if possible
  zgen load chrissicool/zsh-256color

  zgen load romkatv/powerlevel10k powerlevel10k

  zgen load zsh-users/zsh-completions src
  zgen load /usr/share/zsh/site-functions

  # generate the init script from plugins above
  zgen save
fi

# Potential theme customisations
# . "${HOME}/.zsh/zsh.d/theme-after.zsh"
