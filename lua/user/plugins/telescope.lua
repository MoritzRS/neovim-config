-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	defaults = {
		sorting_strategy = "ascending",
		layout_config = {
			horizontal = {
				prompt_position = "top",
			},
		},
	},
})

telescope.load_extension("fzf")