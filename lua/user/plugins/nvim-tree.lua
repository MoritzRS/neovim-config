-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
--vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
	-- Enable floating mode
	view = {
		hide_root_folder = true,
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
			  relative = "cursor",
			  border = "rounded",
			  width = 50,
			  height = 30,
			  row = 1,
			  col = 2,
			},
		},
	},

	-- Enable diagnostics
	diagnostics = {
		enable = true
	}

})