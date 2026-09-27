-- Jump to the PREVIOUS ERROR [e
vim.keymap.set("n", "[e", function()
  vim.diagnostic.jump({
    count = -1,
    severity = vim.diagnostic.severity.ERROR
  })
end, { desc = "Jump to previous Error" })

-- Jump to the NEXT ERROR ]e
vim.keymap.set("n", "]e", function()
  vim.diagnostic.jump({
    count = 1,
    severity = vim.diagnostic.severity.ERROR
  })
end, { desc = "Jump to next Error" })

vim.diagnostic.config({
  virtual_text = true, -- Shows diagnostics at the end of the line
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})


