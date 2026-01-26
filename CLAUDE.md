# Claude Instructions

Before making changes to this zsh configuration, read the relevant documentation and source files.

## Documentation

- [README.md](README.md) - Overview and architecture
- [ZSH.md](ZSH.md) - Zsh coding style (critical for writing proper zsh code)
- [GUIDELINES.md](GUIDELINES.md) - Development guidelines
- [NAMING.md](NAMING.md) - Naming conventions

## Source Files

Before adding or modifying code, review existing implementations to prevent duplication:

| Directory | Purpose |
|-----------|---------|
| `/*.zsh`, `/.zsh*` | Root-level configuration files |
| `inc/*.zsh` | Core configuration modules |
| `lib/*.zsh` | Helper function library |
| `functions/*` | Autoloaded user functions |
| `plugins/*.zsh` | Plugin wrappers |
| `apps/*.zsh` | Application configurations |

---

*Last updated: 2026-01-26*
