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

		vim.keymap.set("n", "<space>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<space>dgc", dap.run_to_cursor, { desc = "Go to Cursor" })

		-- Eval var under cursor
		vim.keymap.set("n", "<space>dh", function()
			require("dapui").eval(nil, { enter = true })
		end, { desc = "Debug Here" })

		vim.keymap.set("n", "<F1>", dap.continue, { desc = "Debug: Continue" })
		vim.keymap.set("n", "<F2>", dap.step_into, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<F3>", dap.step_over, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<F4>", dap.step_out, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<F5>", dap.step_back, { desc = "Debug: Step Back" })
		vim.keymap.set("n", "<F11>", dap.restart, { desc = "Debug: Restart" })
		vim.keymap.set("n", "<F12>", dap.terminate, { desc = "Debug: Quit" })

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
	end
}
