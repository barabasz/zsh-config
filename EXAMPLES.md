# Examples & Use Cases

Part of [zsh-config](README.md) documentation. Code examples and common patterns.

## OS-Specific Configuration

```zsh
# apps/mytool.zsh
#!/bin/zsh
zfile_track_start ${0:A}

if is_installed mytool; then
    if is_macos; then
        export MYTOOL_PATH=/opt/homebrew/opt/mytool
    elif is_debian_based; then
        export MYTOOL_PATH=/usr/local/mytool
    fi
    export PATH=$MYTOOL_PATH/bin:$PATH
fi

zfile_track_end ${0:A}
```

## Conditional Feature Loading

```zsh
# Using try_source for optional files
try_source "$HOME/.secrets" "${0:t}"
try_source "$HOME/.local.zsh" "${0:t}"
```

## Custom Autoloaded Function

```zsh
# functions/devinfo
local python_ver node_ver git_ver

python_ver=$(python3 --version 2>&1 | get_version)
node_ver=$(node --version 2>&1 | get_version)
git_ver=$(git --version 2>&1 | get_version)

print "Development Environment:"
print "  Python: ${y}${python_ver}${x}"
print "  Node.js: ${y}${node_ver}${x}"
print "  Git: ${y}${git_ver}${x}"
```

## Performance Measurement

```zsh
# Measure startup time
$ time zsh -lic "exit"

# Detailed breakdown
$ ZSH_DEBUG=1 zsh -lic "exit"

# Full report
$ zfiles
```

## Lazy Loading Pattern

```zsh
# apps/heavytool.zsh
if is_installed heavytool; then
    heavytool() {
        unfunction heavytool
        eval "$(command heavytool init zsh)"
        heavytool "$@"
    }
fi
```

## Plugin with Configuration

```zsh
# plugins/zsh-autosuggestions.zsh
#!/bin/zsh
zfile_track_start ${0:A}

# Configuration before loading
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

load_plugin zsh-autosuggestions

# Keybinding after loading
bindkey '^[[Z' autosuggest-accept

zfile_track_end ${0:A}
```
