return {
	-- LSP Configuration & Plugins
	'neovim/nvim-lspconfig',
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',
	},
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup {
			ensure_installed = {
				"ansiblels",
				"bashls",
				"lua_ls",
				"basedpyright",
				"ruff",
				"terraformls",
				"jsonls"
			}
		}
	end
}
