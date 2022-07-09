local options = {
    number = true,
    relativenumber = true,
    ignorecase = true,      -- ignore case
    smartcase = true,     -- but don't ignore it, when search string contains uppercase letters
    incsearch = true,        -- do incremental searching
    visualbell = true,
    expandtab = true,
    tabstop=4,
    ruler = true,
    smartindent = true,
    shiftwidth=4,
    hlsearch = true,
    virtualedit="all",
    backspace="indent,eol,start", -- allow backspacing over everything in insert mode
    autoindent=true,
    mouse="a",  -- mouse support
    clipboard="unnamedplus", -- support for system clipboard
    fileencoding="utf-8", -- set file encoding
    splitbelow=true, -- always split below
    splitright=true, -- always split right
    updatetime=300, -- faster completion (4000ms default)
    cursorline=true, -- highlight the current line
    timeoutlen=1000, -- time to wait for a mapped sequence to complete (ms)
    undofile=true, -- enable persitent undo
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
