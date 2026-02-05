#!/bin/zsh
# Part of zconfig · https://github.com/barabasz/zconfig · MIT License
#
# Shell files tracking - keep at the top
zfile_track_start ${0:A}

##
# Icons / glyphs
##

export ICO_BELL="${p}\uf0f3${x}"
export ICO_DEBUG="${y}\uf188${x}"
export ICO_ERROR="${r}\uf057${x}"
export ICO_INFO="${c}\uf449${x}"
export ICO_MSG="${c}\uf0362${x}"
export ICO_OK="${g}\uf058${x}"
export ICO_UL="•"
export ICO_WARN="${y}\uf071${x}"
export ICO_CORRECT="${g}\uf0513${x}"
export ICO_STOP="⛔"

# shell files tracking - keep at the end
zfile_track_end ${0:A}