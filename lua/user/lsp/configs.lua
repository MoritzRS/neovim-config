local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local lspconfig = require("lspconfig")


local default_servers = {
    "cssls",
    "dotls",
    "html",
    "intelephense",
    "phpactor",
    "jsonls",
    "texlab",
    "sumneko_lua",
    "marksman",
    "tsserver",
    "sqlls",
    "svelte",
    "tailwindcss",
}

lsp_installer.setup({
    ensure_installed = default_servers,
})

local servers = {}
local detected = lsp_installer.get_installed_servers()
for idx in pairs(detected) do
    local server = detected[idx].name
    table.insert(servers, server)
end


for _, server in pairs(servers) do
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end