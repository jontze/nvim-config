# My NeoVim Config

## Table of Content

- [My NeoVim Config](#my-neovim-config)
  - [Table of Content](#table-of-content)
  - [Installation](#installation)
  - [Features](#features)

## Installation

1. Install neovim version >0.5
2. Install Plug as plugin manager

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. Clone this repo

```bash
mkdir -p ~/.config/nvim
git clone https://github.com/jontze/nvim-config/ ~/.config/nvim
```

4. Install a [nerdfont](https://github.com/ryanoasis/nerd-fonts) and configure your terminal to use it (otherwise icons will not display correctly) and select **"VictorMono Nerd Font"** in your terminal emulator's font config
5. Install plugins

```shell
nvim '+PlugInstall | qa'
```

6. Install LSPs for the languages you care about via eg `:LspInstall python`. You can use tab completion after typing `:LspInstall ` to see which language servers are available.
7. Install the `rust-analyzer` binary
8. Add/customize your keybindings to `~/.config/nvim/init.vim`.
9. Start Nvim and check if some more dependencies are missing with `:checkhealth`

## Features

- Native LSP Support right out of NeoVim
- Treesitter
- Rust IDE
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) with [FuzzyFinder](https://github.com/junegunn/fzf) and [ripgrep](https://github.com/BurntSushi/ripgrep)
