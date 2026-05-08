# Load zinit (installed via Homebrew)
ZINIT_HOME="/opt/homebrew/opt/zinit"
if [[ -f "${ZINIT_HOME}/zinit.zsh" ]]; then
  source "${ZINIT_HOME}/zinit.zsh"
else
  echo "zinit not found at ${ZINIT_HOME}; run: brew install zinit"
  return
fi

# --- Prompt: load immediately for p10k instant prompt ---
zinit ice depth=1
zinit light romkatv/powerlevel10k

# --- Oh-My-Zsh snippets (cherry-picked, no full OMZ) ---
# OMZP::rust expects $ZSH_CACHE_DIR/completions/ to exist for _rustup / _cargo
[[ -d "${ZSH_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/zinit}/completions" ]] || \
  mkdir -p "${ZSH_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/zinit}/completions"

zinit snippet OMZP::man
zinit snippet OMZP::command-not-found
zinit snippet OMZP::rust

# --- Plugins loaded after prompt for fast startup (turbo mode) ---
zinit wait lucid light-mode for \
  zdharma-continuum/fast-syntax-highlighting \
  paoloantinori/hhighlighter \
  chrissicool/zsh-256color \
  atinit"zicompinit; zicdreplay" \
  zsh-users/zsh-completions
