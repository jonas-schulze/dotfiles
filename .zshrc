if [ -f /usr/local/share/antigen/antigen.zsh ]
then
  source /usr/local/share/antigen/antigen.zsh
elif [ -f ~/.antigen.zsh ]
then
  source ~/.antigen.zsh
else
  curl -L git.io/antigen > ~/.antigen.zsh
  source ~/.antigen.zsh
fi


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle osx

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Completion bundle.
antigen bundle zsh-users/zsh-completions

# Look for automatic updates.
antigen bundle unixorn/autoupdate-antigen.zshplugin

# Load the theme.
antigen theme bhilburn/powerlevel9k

# Tell Antigen that you're done.
antigen apply

export PATH="${HOME}/bin:$(go env GOPATH)/bin:${PATH}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# TODO: Without this fzf will go crazy .. and I have no idea why. I assume there
# might be some cyclic links in ~/Library. The results should be identical to
# `find . -type f`.
export FZF_DEFAULT_COMMAND='fd --type f --hidden --no-ignore'

# Managing dotfiles:
alias dotfiles='git --git-dir=$HOME/projects/dotfiles.git --work-tree=$HOME'

# Managing private tokens; don't forget to `chmod go-rwx` that stuff!
if [ -f ~/.config/private/tokens.sh ]
then
  source ~/.config/private/tokens.sh
else
  echo "No tokens loaded."
fi
