vim.opt_local.expandtab = true
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.textwidth = 80
vim.opt_local.formatoptions:append("t")
vim.opt_local.formatoptions:remove("l")


vim.keymap.set("n", "]h", function()
    vim.fn.search([[^\s*#\+\s]], "W")
end, { buffer = true, desc = "Next Markdown heading" })

vim.keymap.set("n", "[h", function()
    vim.fn.search([[^\s*#\+\s]], "bW")
end, { buffer = true, desc = "Previous Markdown heading" })
