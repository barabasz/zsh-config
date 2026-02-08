#!/bin/zsh
# Part of zconfig · https://github.com/barabasz/zconfig · MIT License
#
# Shell files tracking - keep at the top
zfile_track_start ${0:A}

##
# Zsh options
##

setopt autocd                 # change directory just by typing its name
#setopt correct               # auto correct mistakes
setopt interactivecomments    # allow comments in interactive mode
setopt magicequalsubst        # enable filename expansion for arguments of the form ‘anything=expression’
#setopt nonomatch             # hide error message if there is no match for the pattern
setopt notify                 # report the status of background jobs immediately
setopt numericglobsort        # sort filenames numerically when it makes sense
setopt promptsubst            # enable command substitution in prompt

# History
setopt append_history         # Append to history file
unsetopt banghist             # Don't add commands to history when they start with '!'
setopt extended_history       # Save timestamps
setopt hist_expire_dups_first # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # Ignore consecutive duplicates
setopt hist_ignore_all_dups   # Delete old recorded entry if new entry is a duplicate
setopt hist_find_no_dups      # Do not display a line previously found
setopt hist_ignore_space      # Don't record lines starting with space
setopt hist_save_no_dups      # Don't write duplicate entries in the history file
setopt hist_verify            # Show command with history expansion to user before running it
setopt share_history          # Share history between all sessions

# shell files tracking - keep at the end
zfile_track_end ${0:A}