require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "~",
            package_uninstalled = "x"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "bashls", "yamlls", "dockerls", "jsonls", "angularls", "html", "tailwindcss", "ts_ls", "terraformls", "ansiblels", "marksman" },
}

vim.lsp.config("lua_ls", {})
vim.lsp.config("bash_ls", {})
vim.lsp.config("yamlls", {})
vim.lsp.config("dockerls", {})
vim.lsp.config("jsonls", {})
vim.lsp.config("angularls", {})
vim.lsp.config("html", {})
vim.lsp.config("tailwindcss", {})
vim.lsp.config("ts_ls", {})
vim.lsp.config("terraformls", {})
vim.lsp.config("ansiblels", {})
vim.lsp.config("marksman", {})

