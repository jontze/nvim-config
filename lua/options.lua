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
    virtualedit=all,
    backspace="indent,eol,start", -- allow backspacing over everything in insert mode
    autoindent,
    mouse="a",  -- mouse support
}

for k, v in pairs(options) do
    vim.opt[k] = v
end