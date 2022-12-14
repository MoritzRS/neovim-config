-- Default Options
local opts = { noremap = true, silent = true }

-- Telescope Shortcuts
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<cmd>Telescope buffers<CR>", opts)

-- NvimTree
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", opts)

-- Toggleterm
vim.api.nvim_set_keymap("n", "<C-T>", "<cmd>ToggleTerm<CR>", opts)
vim.api.nvim_set_keymap("t", "<C-T>", [[<C-\><C-N><cmd>ToggleTerm<CR>]], opts)

-- code actions
vim.api.nvim_set_keymap("n", "<A-Enter>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- move lines
vim.api.nvim_set_keymap("n", "<A-Up>", "<cmd>m .-2<CR>", opts)
vim.api.nvim_set_keymap("i", "<A-Up>", "<cmd>m .-2<CR>", opts)

vim.api.nvim_set_keymap("n", "<A-Down>", "<cmd>m .+1<CR>", opts)
vim.api.nvim_set_keymap("i", "<A-Down>", "<cmd>m .+1<CR>", opts)

-- duplicate lines
vim.api.nvim_set_keymap("n", "<S-A-Down>", "yyp", opts)
vim.api.nvim_set_keymap("i", "<S-A-Down>", "<Esc>yypi", opts)

vim.api.nvim_set_keymap("n", "<S-A-Up>", "yyP", opts)
vim.api.nvim_set_keymap("i", "<S-A-Up>", "<Esc>yyPi", opts)

-- quicksave
vim.api.nvim_set_keymap("n", "<C-S>", "<cmd>update<CR>", opts)
vim.api.nvim_set_keymap("v", "<C-S>", "<Esc><cmd>update<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-S>", "<Esc><cmd>update<CR>", opts)

-- rename symbol
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.api.nvim_set_keymap("i", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)


-- undo
vim.api.nvim_set_keymap("n", "<C-Z>", "<cmd>undo<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-Z>", "<cmd>undo<CR>", opts)

-- redo
vim.api.nvim_set_keymap("n", "<C-R>", "<cmd>redo<CR>", opts)
vim.api.nvim_set_keymap("i", "<C-R>", "<cmd>redo<CR>", opts)