vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 10


vim.o.signcolumn = "yes"
vim.o.colorcolumn = "81"
-- vim.o.termguicolors = true

-- vim.o.showmatch = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.o.winborder = "rounded"


vim.keymap.set("n", "<M-S-Up>", "<cmd>move .-2<CR>", {
     desc = "Move line up",
})
vim.keymap.set("n", "<M-S-Down>", "<cmd>move .+1<CR>", {
     desc = "Move line down",
})

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

vim.keymap.set("v", ">", ">gv", { desc = "Indent selection and stay in visual mode" })
vim.keymap.set("v", "<", "<gv", { desc = "Outdent selection and stay in visual mode" })

-- Fix Home and End keys in Command-line mode
vim.keymap.set('c', '<Find>', '<Home>', { desc = "Fix Home key in cmdline" })
vim.keymap.set('c', '<Select>', '<End>', { desc = "Fix End key in cmdline" })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})

