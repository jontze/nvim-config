require("lint").linters_by_ft = {
    yaml = {"yamllint"},
    json = {"jsonlint"},
    markdown = {"markdownlint"},
    html = {"htmlhint"},
    terraform = {"tflint", "tfsec"}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})

