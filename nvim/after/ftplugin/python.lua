-- Use lsp as source of fold ranges
vim.wo.foldexpr = "v:lua.vim.lsp.foldexpr()"
