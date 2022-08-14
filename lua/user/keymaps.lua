local opts = { noremap = true, silent = true }


-- nvim-tree
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

-- telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- toggleterm
vim.api.nvim_set_keymap("n", "<C-T>", ":ToggleTerm<CR>", opts)
vim.api.nvim_set_keymap("t", "<C-T>", [[<C-\><C-N>:ToggleTerm<CR>]], opts)


-- code actions
vim.api.nvim_set_keymap("n", "<A-Enter>", ":lua vim.lsp.buf.code_action()<CR>", opts)

-- move lines
vim.api.nvim_set_keymap("n", "<A-Up>", ":m .-2<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-Down>", ":m .+1<CR>", opts)

-- quicksave
vim.api.nvim_set_keymap("n", "<C-S>", ":update<CR>", opts)
vim.api.nvim_set_keymap("v", "<C-S>", "<Esc>:update<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-S>", "<Esc>:update<CR>", opts)

-- new file
vim.api.nvim_set_keymap("n", "<C-N>", ":enew<CR>i", opts)
