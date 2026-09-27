vim.pack.add {
    { src = "https://github.com/Isrothy/neominimap.nvim" }
}

vim.g.neominimap = {
    auto_enable = true,
    click = {
        enabled = true
    },
    diagnostic = {
        severity = {
            min = vim.diagnostic.severity.WARN,
            max = vim.diagnostic.severity.ERROR
        }
    }
}

vim.keymap.set("n", "<leader>gmm", "<cmd>Neominimap Toggle<CR>")
