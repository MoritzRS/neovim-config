vim.api.nvim_create_autocmd("BufWritePre *",{
    command = "lua vim.lsp.buf.formatting_sync()"
})

vim.api.nvim_create_autocmd("CursorHold *", {
    command = "lua vim.diagnostic.open_float()"
})

vim.api.nvim_create_autocmd("bufenter *", {
    command = "if (winnr('$') == 1 && &filetype == 'nvimtree') | q | endif"
})