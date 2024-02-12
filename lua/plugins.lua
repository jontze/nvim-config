-- Auto install of packer
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

-- Reloads NeoVim on each save of `plugins.lua`
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require("packer").startup(function(use)
  -- Plugins here
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use {
      "nvim-telescope/telescope.nvim",
      branch = "0.1.x"
  }

  -- Start LSP, Formatter and Linter
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mhartington/formatter.nvim",
    "mfussenegger/nvim-lint"
  }
  -- End LSP, Formatter, Linter

  use "hrsh7th/nvim-compe"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use {
    "NTBBloodbath/galaxyline.nvim", -- Maintained galaxyline
    branch = "main"
  }
  use "kyazdani42/nvim-web-devicons"  -- needed for galaxyline icons
  use "NLKNguyen/papercolor-theme"
  use "nikvdp/neomux"
  use "tpope/vim-ragtag"
  use "tpope/vim-surround"
  use "tpope/vim-unimpaired"
  use "tpope/vim-eunuch"
  use "tpope/vim-fugitive"
  use "tomtom/tcomment_vim"
  -- Rust Tools
  use "simrat39/rust-tools.nvim"
  -- File Explorer Plugin
  use "kyazdani42/nvim-tree.lua"
  -- Auto close for {, ), ", ' ...
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  -- Git Diff View in Nvim
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- Enable Multiline error messages, registered after lspconfig
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
    })

  use "neomake/neomake"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
