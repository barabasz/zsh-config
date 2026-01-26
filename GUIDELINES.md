# Development Guidelines

Part of [zsh-config](README.md) documentation. Guidelines for contributing to this configuration.

See also:
- [README.md](README.md) - Architecture overview
- [ZSH.md](ZSH.md) - Zsh coding style
- [NAMING.md](NAMING.md) - Naming conventions

## Adding New Helper Functions

1. **Choose appropriate file in `lib/`:**
   - File tests → `files.zsh`
   - OS detection → `system.zsh`
   - String operations → `strings.zsh`
   - Shell info → `shell.zsh`
   - General utilities → `varia.zsh`

2. **Follow naming conventions** (see [NAMING.md](NAMING.md))

3. **Add tracking:**
   ```zsh
   #!/bin/zsh
   zfile_track_start ${0:A}

   # Your code here

   zfile_track_end ${0:A}
   ```

## Adding New App Integration

1. Create `apps/{tool}.zsh`
2. Use template:
   ```zsh
   #!/bin/zsh
   zfile_track_start ${0:A}

   if is_installed {tool}; then
       # Configuration here
   fi

   zfile_track_end ${0:A}
   ```
3. For priority loading, use `_` prefix (e.g., `_brew.zsh`)

## Adding New Plugin

1. Install: `install_plugin <name> <github-user/repo>`
2. Create wrapper `plugins/<name>.zsh`:
   ```zsh
   #!/bin/zsh
   zfile_track_start ${0:A}

   # Pre-load configuration (optional)
   # export PLUGIN_OPTION=value

   load_plugin <name>

   # Post-load configuration (optional)
   # plugin_command --setup

   zfile_track_end ${0:A}
   ```

Plugin directories (`plugins/<name>/`) are git clones and must be in `.gitignore`.

## Adding New User Function

1. Create `functions/{name}` (no extension)
2. Write function body directly (no function declaration)
3. For option parsing, use `zparseopts` (not `case`/`getopts`):
   ```zsh
   # functions/mycommand
   local -A opts
   zparseopts -D -A opts h -help v -verbose

   if (( ${+opts[-h]} + ${+opts[--help]} )); then
       print "Usage: mycommand [-h|--help] [-v|--verbose]"
       return 0
   fi

   (( ${+opts[-v]} + ${+opts[--verbose]} )) && print "Verbose mode"
   ```

## Adding New Include File

1. Create `inc/{purpose}.zsh`
2. Add tracking calls
3. Source it in `.zshenv` or `.zshrc`

## Performance Optimization

1. **Measure:** `zfiles` or `ZSH_DEBUG=1 zsh -lic "exit"`
2. **Identify slow files:** > 10ms is suspicious
3. **Optimize:**
   - Lazy load heavy apps
   - Avoid unnecessary forks
   - Use zsh builtins

Lazy loading example:
```zsh
# Instead of: eval "$(slowtool init zsh)"
slowtool() {
    unfunction slowtool
    eval "$(command slowtool init zsh)"
    slowtool "$@"
}
```

## Debugging

```zsh
# Enable debug output
export ZSH_DEBUG=1
source ~/.zshenv

# Syntax check
zsh -n lib/files.zsh

# Test function
is_file /etc/hosts && print "OK" || print "FAIL"
```
