source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Look for automatic updates.
antigen bundle unixorn/autoupdate-antigen.zshplugin

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply
