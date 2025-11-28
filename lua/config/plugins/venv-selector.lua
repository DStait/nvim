return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	keys = require("config.keymap").setup_venv_selector_keymap(),
	---@type venv-selector.Config
	opts = {
		pipenv_path = "~/.python-venvs/",
		search = {
			my_venvs = {
				command = "fd 'python$' ~/.python-venvs/",
			},
		},
		-- Your settings go here
	},
}
