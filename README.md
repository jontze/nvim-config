# My NeoVim Config

## Table of Content

- [My NeoVim Config](#my-neovim-config)
  - [Table of Content](#table-of-content)
  - [Features](#features)
  - [Installation](#installation)

## Features

- Native LSP Support right out of NeoVim
- Treesitter
- Rust IDE
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) with [FuzzyFinder](https://github.com/junegunn/fzf) and [ripgrep](https://github.com/BurntSushi/ripgrep)
- Status Bar
- File tree

## Installation

1. Install neovim version >0.5
2. Clone this repo

```bash
mkdir -p ~/.config/nvim
git clone https://github.com/jontze/nvim-config/ ~/.config/nvim
```

3. Install a [nerdfont](https://github.com/ryanoasis/nerd-fonts) and configure your terminal to use it (otherwise icons will not display correctly) and select **"VictorMono Nerd Font"** in your terminal emulator's font config
4. Install the `rust-analyzer` binary
5. Open Nvim and all plugins should be loaded and installed, run `:checkhealth` to check
6. Add/customize your keybindings in `~/.config/nvim/lua/keybindings.lua`.
7. Install LSPs for the languages you care about via eg `:LspInstall python`. You can use tab completion after typing `:LspInstall ` to see which language servers are available.
