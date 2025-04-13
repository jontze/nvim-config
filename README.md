# My NeoVim Config

## Features

- LSP Support
- Treesitter
- Rust IDE
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) with [FuzzyFinder](https://github.com/junegunn/fzf) and [ripgrep](https://github.com/BurntSushi/ripgrep)
- Status Bar
- File tree
- Nice Colorscheme
- Package Manager for Plugins
- And more

## Installation

1. Install neovim version >0.10
2. Clone this repo

```bash
mkdir -p ~/.config/nvim
git clone https://github.com/jontze/nvim-config/ ~/.config/nvim
```

3. Install a [nerdfont](https://github.com/ryanoasis/nerd-fonts) and configure your terminal to use it (otherwise icons will not display correctly)
4. Open Nvim and all plugins should be loaded and installed, run `:checkhealth` to check
5. Install LSPs for the languages you care about via eg `:LspInstall python`. You can use tab completion after typing `:LspInstall ` to see which language servers are available.

## Common Problems

1. In case of issues with `treesitter` run:
   ```sh
   sudo apt install c++
2. In case of problems during the plugin installation check the package manager
    ```vim
    :checkhealth lazy
    ```

    ```vim
    :Lazy
    ```

