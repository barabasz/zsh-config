#!/bin/zsh
# Part of zconfig · https://github.com/barabasz/zconfig · MIT License
#
# Shell files tracking initialization - keep at the top
source "$HOME/.config/zsh/inc/zfiles.zsh"
zfile_track_start ${0:A}

# Zsh-config core environment variables
source "$HOME/.config/zsh/inc/env.zsh"

# Zsh module loading
source "$ZSH_INC_DIR/modules.zsh"

# XDG directories
source "$ZSH_INC_DIR/xdg.zsh"

# PATH
source "$ZSH_INC_DIR/path.zsh"

# Locale
source "$ZSH_INC_DIR/locales.zsh"

# Shell files tracking - keep at the end
zfile_track_end ${0:A}