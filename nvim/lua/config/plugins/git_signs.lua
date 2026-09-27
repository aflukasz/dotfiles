vim.pack.add {
	{ src = "https://github.com/lewis6991/gitsigns.nvim" }
}

vim.keymap.set('n', ']g', function()
  if vim.wo.diff then return ']g' end
  vim.schedule(function() require('gitsigns').next_hunk() end)
  return '<Ignore>'
end, { expr = true, desc = "Next Git Change" })

vim.keymap.set('n', '[g', function()
  if vim.wo.diff then return '[g' end
  vim.schedule(function() require('gitsigns').prev_hunk() end)
  return '<Ignore>'
end, { expr = true, desc = "Previous Git Change" })

-- Stage hunk (toggle)
vim.keymap.set({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Git [H]unk [S]tage' })

-- Unstage / Undo / Reset hunk
vim.keymap.set({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Git [H]unk [R]eset' })

-- Stage the entire current buffer (file)
vim.keymap.set('n', '<leader>hS', require('gitsigns').stage_buffer, { desc = 'Git Stage Buffer' })

-- Undo the last staging operation (Unstage)
vim.keymap.set('n', '<leader>hu', require('gitsigns').undo_stage_hunk, { desc = 'Git Undo Stage Hunk' })

-- Preview the git diff of the hunk under the cursor in a floating window
vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { desc = 'Git [H]unk [P]review' })


