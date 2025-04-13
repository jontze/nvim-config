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
    esure_installed = { "lua_ls", "bashls", "yamlls", "dockerls", "jsonls", "angularls", "html", "tailwindcss", "ts_ls", "terraformls", "ansiblels", "marksman", "cssls" },
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
require("lspconfig").cssls.setup{}

require("crates").setup {
    lsp = {
        enabled = true,
        on_attach = function()
            local crates = require("crates")
            local opts = { silent = true }
            vim.keymap.set("n", "<leader>crv", crates.show_versions_popup, opts)
            vim.keymap.set("n", "<leader>crf", crates.show_features_popup, opts)
            vim.keymap.set("n", "<leader>crd", crates.show_dependencies_popup, opts)
        end,
        actions = true,
        completion = true,
        hover = true,
    },
}

