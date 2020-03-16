# Customising Agnoster
DEFAULT_USER="$(whoami)"
SOLARIZED_THEME="light"

# agnoster theme
zgen oh-my-zsh themes/agnoster

prompt_dir() {
  prompt_segment blue $CURRENT_FG '%C'
}

build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_aws
  prompt_context
  prompt_dir
  prompt_git
  prompt_bzr
  prompt_hg
  prompt_end
}

