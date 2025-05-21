return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	branch = "regexp", -- This is the regexp branch, use this for the new version
	keys = {
		{ "<leader>vs", "<cmd>VenvSelect<cr>",       { desc = 'Venv Select' } },
		{ '<leader>vc', '<cmd>VenvSelectCached<cr>', { desc = 'Venv Select Cached' } },
	},
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
