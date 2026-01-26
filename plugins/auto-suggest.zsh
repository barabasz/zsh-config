#!/bin/zsh
# Shell files tracking - keep at the top
zfile_track_start ${0:A}

# zsh-autosuggestions - Fish-like fast/unobtrusive autosuggestions for Zsh
# https://github.com/zsh-users/zsh-autosuggestions

# Configuration BEFORE loading (plugin reads these at init)
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

load_plugin auto-suggest zsh-users/zsh-autosuggestions

# Configuration AFTER loading
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# Key bindings (require plugin widgets to be loaded)
bindkey '^ ' autosuggest-accept        # Ctrl+Space: accept entire suggestion
bindkey '^[[1;5C' forward-word         # Ctrl+Right: accept word-by-word

# shell files tracking - keep at the end
zfile_track_end ${0:A}
