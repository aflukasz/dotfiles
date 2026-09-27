-- recreating helix - not sure if good idea but at least for now
vim.keymap.set({"n", "v"}, "gs", "^")
vim.keymap.set({"n", "v"}, "gl", "$")
-- vim.keymap.set("n", "gg", "gg") -- this is default actually
vim.keymap.set("n", "ge", "G")
vim.keymap.set("n", "ga", "<C-^>", { nowait = true })
vim.keymap.set("n", "<C-c>", "gcc", { remap = true })


-- TODO: not sure why this is needed - what does nvim do for gf by default?
-- Helix-style 'gf' that respects the active buffer's directory and normalizes the path
vim.keymap.set("n", "gf", function()
  local target_file = vim.fn.expand("<cfile>")

  -- If it's an absolute path or natively resolves, let Neovim handle it
  if target_file:match("^/") or vim.fn.filereadable(target_file) == 1 or vim.fn.findfile(target_file) ~= "" then
    vim.cmd("normal! gf")
    return
  end

  -- Get the full folder path of the currently open file
  local current_dir = vim.fn.expand("%:p:h")

  -- Combine them and fully normalize the path to remove artifacts like /./ or /../
  local absolute_target = vim.fs.normalize(current_dir .. "/" .. target_file)

  -- Open the cleaned file path safely
  vim.cmd("edit " .. vim.fn.fnameescape(absolute_target))
end, { desc = "Helix-style Go to File (Normalized relative path)" })


