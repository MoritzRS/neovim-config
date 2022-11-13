-- Formata on Save
vim.api.nvim_create_autocmd("BufWritePre *",{
    command = "lua vim.lsp.buf.format()"
})

-- Autoclose NvimTree
-- vim.api.nvim_create_autocmd('BufEnter', {
--     command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
--     nested = true,
-- })