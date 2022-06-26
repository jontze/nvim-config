local map = require("utils").keymap
local opts = {}

-- Map Leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab Management
map("n", "<Leader>n", ":tabn<CR>", opts)

-- File Explorer Stuff
map("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>ef", ":NvimTreeFocus<CR>", opts)

-- Window Management
map("n", "<Leader>cv", ":vsplit<CR>", opts)
map("n", "<Leader>ch", ":split<CR>", opts)
-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Lsp key bindings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true})
map("n", "C-]", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true})
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true})
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true})
map("n", "gi","<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true})
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true})
map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { silent = true})
map("n", "<C-p>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true})
map("n", "<C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true})
map("n", "gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", { silent = true})
map("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>", { silent = true})
map("n", "ga", "<cmd>Lspsaga code_action<CR>", { silent = true})
map("x", "ga", "<cmd>Lspsaga range_code_action<CR>", { silent = true})
map("n", "gs", "<cmd>Lspsaga signature_help<CR>", { silent = true})

-- Telescope
map("n", "<Leader>pp", "<cmd>lua require'telescope.builtin'.builtin{}<CR>", {})
-- most recently used files
map("n", "<Leader>m", "<cmd>lua require'telescope.builtin'.oldfiles{}<CR>", {})
-- find buffer
map("n", ";", "<cmd>lua require'telescope.builtin'.buffers{}<CR>", {})
-- find in current buffer
map("n", "<Leader>/", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>", {})
-- bookmarks
map("n", "<Leader>'", "<cmd>lua require'telescope.builtin'.marks{}<CR>", {})
-- git files
map("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.git_files{}<CR>", {})
-- all files
map("n", "<Leader>bfs", "<cmd>lua require'telescope.builtin'.find_files{}<CR>", {})
-- ripgrep like grep through dir
map("n", "<Leader>rg", "<cmd>lua require'telescope.builtin'.live_grep{}<CR>", {})
-- pick color scheme
map("n", "<Leader>cs", "<cmd>lua require'telescope.builtin'.colorscheme{}<CR>", {})

-- NERDComment
-- >> setup nerdcomment key bindings
vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
map("x", "<Leader>ci", "<cmd>call NERDComment('n', 'toggle')<CR>", {})
map("n", "<Leader>ci", "<cmd>call NERDComment('n', 'toggle')<CR>", {})
