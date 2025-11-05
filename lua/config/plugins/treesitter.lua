return {
	-- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	build = ':TSUpdate',
	config = function()
		require("nvim-treesitter.configs").setup {
			ensure_installed = { "python", "bash", "dockerfile", "go", "json", "lua", "terraform" },
		}
	end
}
