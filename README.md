# dotfiles

My personal configuration files for shell, Neovim, and AI coding assistants.

## Contents

### Shell (`zsh/`)
- `.zshrc` - Main Zsh configuration with Oh-My-Zsh, plugins, and aliases
- `.zprofile` - Login shell configuration (Homebrew, Python path)

### Neovim (`nvim/`)
- Lua-based configuration with Packer plugin manager
- Nightfly colorscheme
- Custom options, keymaps, and plugins

### Claude Code (`claude/`)
- `CLAUDE.md` - Global instructions for Claude Code
- `settings.json` - Permissions and preferences
- `statusline.sh` - Custom status line script
- Custom commands and skills for git workflows

### Codex (`codex/`)
- `config.toml.template` - Configuration template (add your own API key)
- Custom skills for commit workflows

## Installation

Copy files to their expected locations:

```bash
# Shell
cp zsh/.zshrc ~/.zshrc
cp zsh/.zprofile ~/.zprofile

# Neovim
cp -r nvim/* ~/.config/nvim/

# Claude Code
cp claude/CLAUDE.md ~/.claude/
cp claude/settings.json ~/.claude/
cp claude/settings.local.json ~/.claude/
cp claude/statusline.sh ~/.claude/
cp -r claude/commands ~/.claude/
cp -r claude/skills ~/.claude/

# Codex (rename template and add your API key)
cp codex/config.toml.template ~/.codex/config.toml
cp -r codex/skills ~/.codex/
```

## Notes

- The Codex config template requires you to replace `YOUR_CONTEXT7_API_KEY_HERE` with your actual API key
- Neovim plugins will be auto-installed on first launch via Packer
