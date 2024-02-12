require("formatter").setup({
    filetype = {
        yaml = {
            require("formatter.filetypes.yaml").prettier
        },
        javascript = {
            require("formatter.filetypes.javascript").prettier
        },
        json = {
            require("formatter.filetypes.json").prettier
        },
        markdown = {
            require("formatter.filetypes.markdown").prettier
        },
        rust = {
            require("formatter.filetypes.rust").rustfmt
        },
        svelte = {
            require("formatter.filetypes.svelte").prettier
        },
        terraform = {
            require("formatter.filetypes.terraform").terraformfmt
        },
        typescript = {
            require("formatter.filetypes.typescript").prettier
        }
    }
})
