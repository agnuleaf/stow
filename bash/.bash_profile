
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
# checks if .profile is non-empty 's' and sources if so. Put any non-bash specific shell
# stuff in .profile so other shells can source it


# python version environment
export PYENV_ROOT="$HOME/.pyenv"
if [ -d $PYENV_ROOT/bin ] ; then
   export PATH="$PYENV_ROOT/bin:$PATH"
fi


if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi
