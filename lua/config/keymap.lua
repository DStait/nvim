M = {}

-- Better experience when using space as leader
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.api.nvim_create_user_command('W', 'noa w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})

vim.keymap.set('n', '<CR>j', 'm`o<Esc>``')
vim.keymap.set('n', '<CR>k', 'm`O<Esc>``')

vim.api.nvim_set_keymap('n', 'q', 'q', { noremap = true, silent = false })


function M.setup_neotest_keymaps()
	return {
		{
			"<leader>ta",
			function()
				require("neotest").run.attach()
			end,
			desc = "Attach",
		},
		{
			"<leader>tf",
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
			desc = "Run File",
		},
		{
			"<leader>tA",
			function()
				require("neotest").run.run(vim.uv.cwd())
			end,
			desc = "Run All Test Files",
		},
		{
			"<leader>tT",
			function()
				require("neotest").run.run({ suite = true })
			end,
			desc = "Run Test Suite",
		},
		{
			"<leader>tn",
			function()
				require("neotest").run.run()
			end,
			desc = "Run Nearest",
		},
		{
			"<leader>tl",
			function()
				require("neotest").run.run_last()
			end,
			desc = "Run Last",
		},
		{
			"<leader>ts",
			function()
				require("neotest").summary.toggle()
			end,
			desc = "Toggle Summary",
		},
		{
			"<leader>to",
			function()
				require("neotest").output.open({ enter = true, auto_close = true })
			end,
			desc = "Show Output",
		},
		{
			"<leader>tO",
			function()
				require("neotest").output_panel.toggle()
			end,
			desc = "Toggle Output Panel",
		},
		{
			"<leader>tt",
			function()
				require("neotest").run.stop()
			end,
			desc = "Terminate",
		},
		{
			"<leader>tw",
			function()
				require("neotest").watch()
			end,
			desc = "Watch",
		},
		{
			"<leader>td",
			function()
				vim.cmd("Neotree close")
				require("neotest").summary.close()
				require("neotest").output_panel.close()
				require("neotest").run.run({ suite = false, strategy = "dap" })
			end,
			desc = "Debug nearest test",
		},
	}
end

return M
