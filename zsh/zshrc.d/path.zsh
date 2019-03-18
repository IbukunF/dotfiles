# path.zsh
#
#   This is where PATH & LD_LIBRARY_PATH get modified.
#
########################################################

# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# set path so brewed python is used before osx python
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/local/opt/gettext/bin:/Library/TeX/texbin/:$PATH

# set PATH so it includes scripts if it exists
if [ -d "$HOME/scripts" ] ; then
    PATH="$HOME/scripts:$PATH"
fi

if [ -d "$HOME/lib" ] ; then
    LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
fi
