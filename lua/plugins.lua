-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Leader Key Needs to be defined before lazy plugin manager setup
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setup lazy nvim
require("lazy").setup({
  "nvim-lua/plenary.nvim",
  {
      "nvim-telescope/telescope.nvim",
      version = "0.1.8"
  },
  -- Start LSP, Formatter and Linter
  { "williamboman/mason.nvim", version = "v1.11.0" },
  { "williamboman/mason-lspconfig.nvim", version = "v1.32.0" },
  { "neovim/nvim-lspconfig", version = "v2.*" },
  "mhartington/formatter.nvim",
  "mfussenegger/nvim-lint",  
  -- End LSP, Formatter, Linter
  -- Completions
  {
    "Saghen/blink.cmp",
    dependencies = { 'rafamadriz/friendly-snippets' }, -- Optional: provides snippets for the snippet source
    version = "1.*",
    opts = {},
    keymap = { preset = "default" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  "nvim-treesitter/nvim-treesitter-textobjects",
  "NTBBloodbath/galaxyline.nvim", -- Maintained galaxyline
  "kyazdani42/nvim-web-devicons",  -- needed for galaxyline icons
  "tpope/vim-surround",
  "tpope/vim-unimpaired",
  "tpope/vim-eunuch",
  "tpope/vim-fugitive",
  "tomtom/tcomment_vim",
  -- Rust Tools
  { "mrcjkb/rustaceanvim", version = "v6.0.2" },
  -- File Explorer Plugin
  { "nvim-tree/nvim-tree.lua", version = "v1" },
  -- Auto close for {, ), ", ' ...
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  -- Git Diff View in Nvim
  { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },
  -- Enable Multiline error messages, registered after lspconfig
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
  },
  "neomake/neomake",
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
})
