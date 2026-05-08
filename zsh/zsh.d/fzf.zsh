if type fzf &> /dev/null; then
    source <(fzf --zsh)
else
    echo "fzf not found"
fi
