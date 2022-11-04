local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end

-- Flavours: latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = "macchiato"
catppuccin.setup()
vim.cmd [[colorscheme catppuccin]]