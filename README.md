# Neovim Configuration

A modern Neovim configuration focused on development with C/C++ and Lua, featuring LSP support, intelligent code completion, and a carefully selected set of plugins.

## Features

- 🚀 Fast and minimal configuration
- 🎨 Rose Pine color scheme with transparency
- 🔍 Fuzzy finding with Telescope
- 📝 LSP support for C/C++ (clangd) and Lua
- ✨ Smart code completion with Blink.cmp
- 🌳 Syntax highlighting with Tree-sitter
- 📂 Quick file navigation with Harpoon
- ⏪ Undo history visualization with Undotree
- 🔧 Git integration with Fugitive

## Prerequisites

Before installing this configuration, ensure you have the following installed:

- Neovim >= 0.9.0
- Git
- Node.js (for some LSP servers)
- A [Nerd Font](https://www.nerdfonts.com/) for proper icon display
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope grep functionality)
- [clangd](https://clangd.llvm.org/) (for C/C++ LSP support)
- [lua-language-server](https://github.com/LuaLS/lua-language-server) (for Lua LSP support)

## Installation

1. **Backup your existing Neovim configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/tattietech/nvim.git ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   Lazy.nvim will automatically install all plugins on first launch.

4. **Install LSP servers** (if not already installed):
   - **clangd**: Follow instructions at https://clangd.llvm.org/installation
   - **lua-language-server**: Follow instructions at https://github.com/LuaLS/lua-language-server

## Structure

```
.
├── init.lua                    # Entry point
├── lazy-lock.json              # Plugin version lockfile
└── lua/
    └── ab/
        ├── init.lua            # Module initialization
        ├── lazy.lua            # Lazy.nvim plugin manager setup
        ├── lsp.lua             # LSP configuration
        ├── set.lua             # Vim settings
        ├── remap.lua           # Key mappings
        ├── colors.lua          # Color scheme setup
        ├── command.lua         # Custom commands
        └── plugins/            # Plugin configurations
            ├── blink.lua       # Completion plugin
            ├── harpoon.lua     # File navigation
            ├── rose-pine.lua   # Color scheme
            ├── telescope.lua   # Fuzzy finder
            ├── treesitter.lua  # Syntax highlighting
            ├── undotree.lua    # Undo history
            └── vim-fugitive.lua # Git integration
```

## Plugins

### Core Plugins

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting and code understanding

### Editor Enhancement

- **[blink.cmp](https://github.com/saghen/blink.cmp)** - Fast and feature-rich completion plugin
  - Includes friendly-snippets and lspkind for better completion experience
  - Auto-bracket insertion
  - Signature help support
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, grep, and more
- **[harpoon](https://github.com/ThePrimeagen/harpoon)** - Quick file navigation and marking
- **[undotree](https://github.com/mbbill/undotree)** - Visualize and navigate undo history
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** - Git integration

### Appearance

- **[rose-pine](https://github.com/rose-pine/neovim)** - Soho vibes color scheme with transparent background

## Key Mappings

### Leader Key
The leader key is set to `<Space>`.

### General

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pv` | Normal | Open file explorer (netrw) |
| `<leader>u` | Normal | Toggle Undotree |
| `<leader>git` | Normal | Open vim-fugitive |

### Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pf` | Normal | Find files |
| `<C-p>` | Normal | Find git files |
| `<leader>ps` | Normal | Grep search (prompts for input) |

### Harpoon

| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Add current file to Harpoon |
| `<C-e>` | Normal | Toggle Harpoon quick menu |
| `<C-h>` | Normal | Navigate to Harpoon file 1 |
| `<C-j>` | Normal | Navigate to Harpoon file 2 |
| `<C-k>` | Normal | Navigate to Harpoon file 3 |
| `<C-l>` | Normal | Navigate to Harpoon file 4 |
| `<C-Right>` | Normal | Next Harpoon file |
| `<C-Left>` | Normal | Previous Harpoon file |

### Completion (Blink.cmp)

| Key | Mode | Action |
|-----|------|--------|
| `<C-space>` | Insert | Show/hide completion menu and documentation |
| `<C-e>` | Insert | Hide completion menu |
| `<CR>` | Insert | Accept completion |
| `<Tab>` | Insert | Select next item / forward snippet jump |
| `<S-Tab>` | Insert | Select previous item / backward snippet jump |
| `<Up>` / `<Down>` | Insert | Navigate completion items |
| `<C-p>` / `<C-n>` | Insert | Navigate completion items |
| `<C-up>` / `<C-down>` | Insert | Scroll documentation |

### LSP Commands

#### Clangd (C/C++)

- `:LspClangdSwitchSourceHeader` - Switch between source and header files
- `:LspClangdShowSymbolInfo` - Show symbol information

## LSP Configuration

### Clangd (C/C++)

Configured for C, C++, Objective-C, Objective-C++, and CUDA files.

**Root markers:**
- `.clangd`
- `.clang-tidy`
- `.clang-format`
- `compile_commands.json`
- `compile_flags.txt`
- `configure.ac` (AutoTools)
- `.git`

**Features:**
- UTF-8 and UTF-16 offset encoding support
- Completion near cursor
- Custom commands for header/source switching and symbol info

### Lua Language Server

Configured for Lua development.

**Root markers:**
- `.luarc.json`
- `.luarc.jsonc`
- `.luacheckrc`
- `.stylua.toml`
- `stylua.toml`
- `selene.toml`
- `selene.yml`
- `.git`

## Editor Settings

Key editor settings from `lua/ab/set.lua`:

- Line numbers enabled
- 4-space indentation (tabs converted to spaces)
- Smart indentation enabled
- No swap files
- Persistent undo history (`~/.vim/undodir`)
- No search highlighting (but incremental search enabled)
- True color support
- 8 lines of scrolloff
- Sign column always visible
- 50ms update time
- Color column at 80 characters

## Custom Commands

- `:BR` - Execute `./scripts/build_run.sh` (custom build and run script)

## Tree-sitter Parsers

Automatically installed parsers:
- lua
- c
- cpp
- python
- javascript
- typescript
- html
- css
- json
- bash
- markdown

## TODO / Future Improvements

- ⚠️ **LSP settings still need tweaking and additions** - This configuration is a work in progress
- Consider adding more LSP servers for other languages
- Add more language-specific configurations
- Enhance LSP keybindings and capabilities
- Consider adding debugging support (DAP)
- Add more custom commands and utilities

## Customization

Feel free to modify the configuration to suit your needs:

1. **Change color scheme**: Edit `lua/ab/colors.lua`
2. **Modify key mappings**: Edit `lua/ab/remap.lua` and individual plugin configs
3. **Adjust editor settings**: Edit `lua/ab/set.lua`
4. **Add/remove plugins**: Add new plugin files in `lua/ab/plugins/`
5. **Configure LSP**: Edit `lua/ab/lsp.lua`

## Troubleshooting

### Plugins not installing
Run `:Lazy sync` in Neovim to manually sync plugins.

### LSP not working
1. Ensure the LSP server is installed and in your PATH
2. Check LSP status with `:LspInfo`
3. Check logs in `~/.local/state/nvim/lsp.log`

### Tree-sitter errors
Run `:TSUpdate` to update all parsers.

## License

This configuration is provided as-is for personal use. Feel free to use, modify, and share.

## Credits

This configuration is inspired by various Neovim configurations in the community, particularly:
- [ThePrimeagen's setup](https://github.com/ThePrimeagen/.dotfiles)
- The Neovim and plugin documentation

## Contributing

This is a personal configuration, but suggestions and improvements are welcome! Feel free to open an issue or submit a pull request.
