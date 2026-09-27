vim.pack.add {
	{ src = "https://github.com/folke/flash.nvim" }
}
require("flash").setup({})

vim.keymap.set({ "n", "x", "o" }, "<C-s>", function()
    require("flash").jump()
    end, { desc = "Flash jump" }
)

