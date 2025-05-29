return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to Harpoon" })
		vim.keymap.set("n", "<leader>A", function() harpoon:list():clear() end, { desc = "Remove from Harpoon" })
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Show harpoon window 1" })
		vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Show harpoon window 2" })
		vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Show harpoon window 3" })
		vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Show harpoon window 4" })
		vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Show harpoon window 5" })
		vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Show harpoon window 6" })
		vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "Show harpoon window 7" })
		vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Show harpoon window 8" })
		vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "Show harpoon window 9" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-j>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-k>", function() harpoon:list():next() end)
	end
}
