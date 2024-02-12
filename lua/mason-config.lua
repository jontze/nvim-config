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
    ensure_installed = { "lua_ls", "rust_analyzer", "bashls", "yamlls", "dockerls", "jsonls" },
}

require("lspconfig").lua_ls.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").yamlls.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").jsonls.setup({})
