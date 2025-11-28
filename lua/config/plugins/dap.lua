return {
	'mfussenegger/nvim-dap',
	dependencies = {
		"mfussenegger/nvim-dap-python",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio", -- dependency of nvm-dap-ui
	},
	config = function()
		local dap = require "dap"
		local ui = require "dapui"

		require("dapui").setup()

		require("dap-python").setup("~/.python-venvs/debugpy/bin/python")
		require('dap-python').test_runner = 'pytest'

		dap.listeners.before.attach.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			ui.close()
		end
	end,
	keys = require("config.keymap").setup_dap_keymaps(),
}
