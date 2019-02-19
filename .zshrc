source /usr/local/share/antigen/antigen.zsh

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
