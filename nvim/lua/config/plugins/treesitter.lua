vim.pack.add {
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "master" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects", version = "main" }
}

require('nvim-treesitter').install { 'rust', 'python' }

vim.keymap.set("n", "[f", function()
  require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer")
end, { desc = "Helix: Jump to previous function" })

vim.keymap.set("n", "]f", function()
  require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer")
end, { desc = "Helix: Jump to next function" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*.py' },
  callback = function() vim.treesitter.start() end,
})
