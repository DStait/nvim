M = {}

-- Better experience when using space as leader
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


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

function M.setup_harpoon_keymaps()
	return {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Add to harpoon"
		},
		{
			"<leader>A",
			function()
				require("harpoon"):list():clear()
			end,
			desc = "Remove from harpoon"
		},
		{
			"<C-e>",
			function()
				require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
			end,
			desc = "Open harpoon menu"
		},
		{
			"<C-k>",
			function()
				require("harpoon"):list():prev()
			end,
			desc = "Previous entry"
		},
		{
			"<C-j>",
			function()
				require("harpoon"):list():next()
			end,
			desc = "Next entry"
		},
	}
end

function M.setup_oil_keymaps()
	return {
		{
			"<leader>e",
			"<CMD>Oil<CR>",
			desc = "Open file explorer"
		}
	}
end

function M.setup_browser_keymaps()
	return {
		{
			"<leader>b",
			":Browse input<CR>",
			mode = { "n", "v" },
			desc = "Search DDG"
		}
	}
end

function M.setup_telescope_keymaps()
	return {
		{
			"<leader><space>",
			function()
				local o = vim.system({ "git", "rev-parse", "--show-toplevel" }):wait()
				if o.code == 0 then
					require("telescope.builtin").git_files({ show_untracked = true })
				else
					require("telescope.builtin").find_files()
				end
			end,
			desc = "Find Files"
		},
		{
			"<leader>i",
			require("telescope.builtin").diagnostics,
			desc = "Code Issues"
		},
		{
			"<leader>s",
			require("telescope.builtin").live_grep,
			desc = "Search string"
		},
		{
			"<leader>S",
			require("telescope.builtin").spell_suggest,
			desc = "Spelling suggestions"
		},
		{
			"<leader>h",
			require("telescope.builtin").help_tags,
			desc = "Help"
		},
		{
			"<leader>?",
			require("telescope.builtin").oldfiles,
			desc = "Recent files"
		},
		{
			"<leader>n",
			function()
				require("noice").cmd("telescope")
			end,
			desc = "Notifications"
		},
		{
			"<leader>gb",
			require("telescope.builtin").git_branches,
			desc = "git branches"
		},
		{
			"<leader>gc",
			require("telescope.builtin").git_commits,
			desc = "git commits"
		},
		{
			"<leader>gp",
			require("telescope.builtin").git_bcommits,
			desc = "git parent commits"
		},
	}
end

function M.setup_dap_keymaps()
	local dap = require("dap")
	return {
		{
			"<leader>db",
			dap.toggle_breakpoint,
			desc = "Debug: Toggle breakpoint"
		},
		{
			"<leader>dc",
			dap.run_to_cursor,
			desc = "Debug: Run to cursor"
		},
		{
			"<leader>dh",
			function()
				require("dapui").eval(nil, { enter = true })
			end,
			desc = "Debug: Under cursor"
		},
		{
			"<F1>",
			dap.continue,
			desc = "Debug: Continue"
		},
		{
			"<F2>",
			dap.step_into,
			desc = "Debug: Step info"
		},
		{
			"<F3>",
			dap.step_over,
			desc = "Debug: Step over"
		},
		{
			"<F4>",
			dap.step_out,
			desc = "Debug: Step out"
		},
		{
			"<F5>",
			dap.step_back,
			desc = "Debug: Step back"
		},
		{
			"<F11>",
			dap.restart,
			desc = "Debug: Restart"
		},
		{
			"<F12>",
			dap.terminate,
			desc = "Debug: Terminate"
		},

	}
end

function M.setup_neogit_keymaps()
	return {
		{
			"<leader>G",
			"<cmd>Neogit<cr>",
			desc = "Neogit UI"
		}
	}
end

function M.setup_blame_keymaps()
	return {
		{
			"<leader>gB",
			"<cmd>BlameToggle virtual<cr>",
			desc = "Blame Toggle"
		}
	}
end

function M.setup_venv_selector_keymap()
	return {
		{
			"<leader>V",
			"<cmd>VenvSelect<cr>",
			{ desc = 'Venv Select' }
		},
	}
end

return M
