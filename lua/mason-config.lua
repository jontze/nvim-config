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

require("lspconfig").lua_ls.setup{}
require("lspconfig").bashls.setup{}
require("lspconfig").yamlls.setup{}
require("lspconfig").dockerls.setup{}
require("lspconfig").jsonls.setup{}
require("lspconfig").angularls.setup{}
require("lspconfig").html.setup{}
require("lspconfig").tailwindcss.setup{}
require("lspconfig").ts_ls.setup{}
require("lspconfig").terraformls.setup{}
require("lspconfig").ansiblels.setup{}
require("lspconfig").marksman.setup{}

