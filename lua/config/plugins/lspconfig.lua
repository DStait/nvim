return {
	-- LSP Configuration & Plugins
	'neovim/nvim-lspconfig',
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',
		"rshkarin/mason-nvim-lint",
		"mfussenegger/nvim-lint",
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
				"jsonls",
			}
		}

		require("mason-nvim-lint").setup {
			ensure_installed = {
				"shellcheck"
			},
			automatic_installation = false
		}
	end
}
