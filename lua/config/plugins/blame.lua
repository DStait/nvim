return {
	"FabijanZulj/blame.nvim",
	lazy = false,
	config = function()
		require('blame').setup {}
	end,
	keys = require("config.keymap").setup_blame_keymaps()
}
